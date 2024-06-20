resource "aws_cloudwatch_metric_alarm" "cluster-status-red" {
  dimensions = {
    DomainName = var.domain_name
    AccountId  = data.aws_caller_identity.current.account_id
  }

  alarm_name          = "ClusterStatus.red >= 1"
  alarm_description   = "Alert when ClusterStatus.red >=1, 1 time within 1 minutes"
  namespace           = "AWS/ES"
  statistic           = "Maximum"
  alarm_actions       = var.alarm_actions
  comparison_operator = "GreaterThanOrEqualToThreshold"
  threshold           = 1
  period              = 60
  evaluation_periods  = 1
  metric_name         = "ClusterStatus.red"
}

resource "aws_cloudwatch_metric_alarm" "cluster-status-yellow" {
  dimensions = {
    DomainName = var.domain_name
    AccountId  = data.aws_caller_identity.current.account_id
  }

  alarm_name          = "ClusterStatus.yellow >= 1"
  alarm_description   = "ClusterStatus.yellow maximum is >= 1 for 1 minute, 5 consecutive times"
  namespace           = "AWS/ES"
  statistic           = "Maximum"
  metric_name         = "ClusterStatus.yellow"
  comparison_operator = "GreaterThanOrEqualToThreshold"
  threshold           = 1
  period              = 60
  evaluation_periods  = 5
  alarm_actions       = var.alarm_actions

}

resource "aws_cloudwatch_metric_alarm" "free-storage-space" {
  dimensions = {
    DomainName = var.domain_name
    AccountId  = data.aws_caller_identity.current.account_id
  }


  alarm_name          = "FreeStorageSpace <= 20480"
  alarm_description   = "Alert when FreeStorageSpace <= 20480, 1 time within 1 minute"
  namespace           = "AWS/ES"
  statistic           = "Minimum"
  metric_name         = "FreeStorageSpace"
  comparison_operator = "LessThanOrEqualToThreshold"
  threshold           = 20480
  period              = 60
  evaluation_periods  = 1
  alarm_actions       = var.alarm_actions
}

resource "aws_cloudwatch_metric_alarm" "cluster-index-writes-blocked" {
  dimensions = {
    DomainName = var.domain_name
    AccountId  = data.aws_caller_identity.current.account_id
  }

  alarm_name          = "ClusterIndexWritesBlocked >= 1"
  alarm_description   = "ClusterIndexWritesBlocked >=1, 1 time within 5 minutes"
  namespace           = "AWS/ES"
  statistic           = "Maximum"
  metric_name         = "ClusterIndexWritesBlocked"
  comparison_operator = "GreaterThanOrEqualToThreshold"
  threshold           = 1
  period              = 300
  evaluation_periods  = 1
  alarm_actions       = var.alarm_actions
}

resource "aws_cloudwatch_metric_alarm" "automated-snapshot-failure" {
  dimensions = {
    DomainName = var.domain_name
    AccountId  = data.aws_caller_identity.current.account_id
  }

  alarm_name          = "AutomatedSnapshotFailure >= 1"
  alarm_description   = "AutomatedSnapshotFailure >=1, 1 time within 5 minutes"
  namespace           = "AWS/ES"
  statistic           = "Maximum"
  metric_name         = "AutomatedSnapshotFailure"
  comparison_operator = "GreaterThanOrEqualToThreshold"
  threshold           = 1
  period              = 60
  evaluation_periods  = 1
  alarm_actions       = var.alarm_actions
}

resource "aws_cloudwatch_metric_alarm" "cpu-utilization" {
  dimensions = {
    DomainName = var.domain_name
    AccountId  = data.aws_caller_identity.current.account_id
  }

  alarm_name          = "CPUUtilization >= 80"
  alarm_description   = "Alert when CPUUtilization >= 80, 3 time within 15 minutes"
  namespace           = "AWS/ES"
  statistic           = "Maximum"
  metric_name         = "CPUUtilization"
  comparison_operator = "GreaterThanOrEqualToThreshold"
  threshold           = 80
  period              = 900
  evaluation_periods  = 3
  alarm_actions       = var.alarm_actions
}

### REVER ####
resource "aws_cloudwatch_metric_alarm" "jvm-memory-pressure" {
  dimensions = {
    DomainName = var.domain_name
    AccountId  = data.aws_caller_identity.current.account_id
  }

  alarm_name          = "JVMMemoryPressure >= 95 (current gen instance)"
  alarm_description   = "JVMMemoryPressure >= 95 (current gen instance), 3 time within 1 minutes"
  namespace           = "AWS/ES"
  statistic           = "Maximum"
  metric_name         = "JVMMemoryPressure"
  comparison_operator = "GreaterThanOrEqualToThreshold"
  threshold           = 95
  period              = 60
  evaluation_periods  = 3
  alarm_actions       = var.alarm_actions
}

### REVER ####
resource "aws_cloudwatch_metric_alarm" "old-jvm-memory-pressure" {
  dimensions = {
    DomainName = var.domain_name
    AccountId  = data.aws_caller_identity.current.account_id
  }

  alarm_name          = "OldJVMMemoryPressure >= 80 (old gen instance)"
  alarm_description   = "OldJVMMemoryPressure >= 80 (old gen instance), 3 time within 1 minutes"
  namespace           = "AWS/ES"
  statistic           = "Maximum"
  metric_name         = "OldJVMMemoryPressure"
  comparison_operator = "GreaterThanOrEqualToThreshold"
  threshold           = 80
  period              = 60
  evaluation_periods  = 3
  alarm_actions       = var.alarm_actions
}

resource "aws_cloudwatch_metric_alarm" "mastercpuutilization" {
  dimensions = {
    DomainName = var.domain_name
    AccountId  = data.aws_caller_identity.current.account_id
  }

  alarm_name          = "MasterCPUUtilization >= 50"
  alarm_description   = "MasterCPUUtilization >= 50, 3 time within 15 minutes"
  namespace           = "AWS/ES"
  statistic           = "Maximum"
  metric_name         = "MasterCPUUtilization"
  comparison_operator = "GreaterThanOrEqualToThreshold"
  threshold           = 50
  period              = 900
  evaluation_periods  = 3
  alarm_actions       = var.alarm_actions
}

resource "aws_cloudwatch_metric_alarm" "masterjvmmemorypressure" {
  dimensions = {
    DomainName = var.domain_name
    AccountId  = data.aws_caller_identity.current.account_id
  }

  alarm_name          = "MasterJVMMemoryPressure >= 95"
  alarm_description   = "MasterJVMMemoryPressure >= 95, 3 time within 1 minutes"
  namespace           = "AWS/ES"
  statistic           = "Maximum"
  metric_name         = "MasterJVMMemoryPressure"
  comparison_operator = "GreaterThanOrEqualToThreshold"
  threshold           = 95
  period              = 60
  evaluation_periods  = 3
  alarm_actions       = var.alarm_actions
}

resource "aws_cloudwatch_metric_alarm" "masteroldjvmmemorypressure" {
  dimensions = {
    DomainName = var.domain_name
    AccountId  = data.aws_caller_identity.current.account_id
  }

  alarm_name          = "MasterOldJVMMemoryPressure >= 80"
  alarm_description   = "MasterOldJVMMemoryPressure >= 80, 3 time within 1 minutes"
  namespace           = "AWS/ES"
  statistic           = "Maximum"
  metric_name         = "MasterOldJVMMemoryPressure"
  comparison_operator = "GreaterThanOrEqualToThreshold"
  threshold           = 80
  period              = 60
  evaluation_periods  = 3
  alarm_actions       = var.alarm_actions
}

resource "aws_cloudwatch_metric_alarm" "kmskeyerror" {
  dimensions = {
    DomainName = var.domain_name
    AccountId  = data.aws_caller_identity.current.account_id
  }


  alarm_name          = "KMSKeyError >= 1"
  alarm_description   = "KMSKeyError >= 1, 1 time within 1 minutes"
  namespace           = "AWS/ES"
  statistic           = "Maximum"
  metric_name         = "KMSKeyError"
  comparison_operator = "GreaterThanOrEqualToThreshold"
  threshold           = 1
  period              = 60
  evaluation_periods  = 1
  alarm_actions       = var.alarm_actions
}

resource "aws_cloudwatch_metric_alarm" "kmskeyinaccessible" {
  dimensions = {
    DomainName = var.domain_name
    AccountId  = data.aws_caller_identity.current.account_id
  }

  alarm_name          = "KMSKeyInaccessible >= 1"
  alarm_description   = "KMSKeyInaccessible >= 1, 1 time within 1 minutes"
  namespace           = "AWS/ES"
  statistic           = "Maximum"
  metric_name         = "KMSKeyInaccessible"
  comparison_operator = "GreaterThanOrEqualToThreshold"
  threshold           = 1
  period              = 60
  evaluation_periods  = 1
  alarm_actions       = var.alarm_actions
}

resource "aws_cloudwatch_metric_alarm" "shardsactive" {
  dimensions = {
    DomainName = var.domain_name
    AccountId  = data.aws_caller_identity.current.account_id
  }

  alarm_name          = "ShardsActive => 30000"
  alarm_description   = "ShardsActive => 30000, 1 time within 1 minutes"
  namespace           = "AWS/ES"
  statistic           = "Maximum"
  metric_name         = "Shards.active"
  comparison_operator = "GreaterThanOrEqualToThreshold"
  threshold           = 30000
  period              = 60
  evaluation_periods  = 1
  alarm_actions       = var.alarm_actions
}

resource "aws_cloudwatch_metric_alarm" "master-reachable-from-node" {
  dimensions = {
    DomainName = var.domain_name
    AccountId  = data.aws_caller_identity.current.account_id
  }

  alarm_name          = "MasterReachableFromNode < 1"
  alarm_description   = "MasterReachableFromNode < 1, 1 time within 1 minutes"
  namespace           = "AWS/ES"
  statistic           = "Maximum"
  metric_name         = "MasterReachableFromNode"
  comparison_operator = "LessThanThreshold"
  threshold           = 1
  period              = 86400
  evaluation_periods  = 1
  alarm_actions       = var.alarm_actions
}


resource "aws_cloudwatch_metric_alarm" "threadpool-write-queue" {
  dimensions = {
    DomainName = var.domain_name
    AccountId  = data.aws_caller_identity.current.account_id
  }


  alarm_name          = "ThreadPoolWriteQueue average >= 100"
  alarm_description   = "ThreadPoolWriteQueue average >= 100, 1 time within 1 minutes"
  namespace           = "AWS/ES"
  statistic           = "Average"
  metric_name         = "ThreadPoolWriteQueue"
  comparison_operator = "GreaterThanOrEqualToThreshold"
  threshold           = 100
  period              = 60
  evaluation_periods  = 1
  alarm_actions       = var.alarm_actions
}


resource "aws_cloudwatch_metric_alarm" "threadpool-search-queue-average" {
  dimensions = {
    DomainName = var.domain_name
    AccountId  = data.aws_caller_identity.current.account_id
  }

  alarm_name          = "ThreadPoolSearchQueue average >= 500"
  alarm_description   = "ThreadPoolSearchQueue average >= 500, 1 time within 1 minutes"
  namespace           = "AWS/ES"
  statistic           = "Average"
  metric_name         = "ThreadPoolSearchQueue"
  comparison_operator = "GreaterThanOrEqualToThreshold"
  threshold           = 500
  period              = 60
  evaluation_periods  = 1
  alarm_actions       = var.alarm_actions
}


resource "aws_cloudwatch_metric_alarm" "threadpool-search-queue-maximum" {
  dimensions = {
    DomainName = var.domain_name
    AccountId  = data.aws_caller_identity.current.account_id
  }

  alarm_name          = "ThreadPoolSearchQueue maximum >= 5000"
  alarm_description   = "ThreadPoolSearchQueue maximum >= 5000, 1 time within 1 minutes"
  namespace           = "AWS/ES"
  statistic           = "Maximum"
  metric_name         = "ThreadPoolSearchQueue"
  comparison_operator = "GreaterThanOrEqualToThreshold"
  threshold           = 5000
  period              = 60
  evaluation_periods  = 1
  alarm_actions       = var.alarm_actions
}


resource "aws_cloudwatch_metric_alarm" "threadpool-write-rejected" {
  alarm_name = "DIFF(ThreadpoolWriteRejected) >= 1"
  metric_query {
    expression  = "DIFF(threadpoolWriteRejected)"
    id          = "dIFF_threadpoolWriteRejected"
    label       = "Difference in ThreadpoolWriteRejected"
    return_data = true
  }

  metric_query {
    id    = "threadpoolWriteRejected"
    label = "ThreadpoolWriteRejected"
    metric {
      dimensions = {
        DomainName = var.domain_name
        AccountId  = data.aws_caller_identity.current.account_id
      }
      metric_name = "ThreadpoolWriteRejected"
      namespace   = "AWS/ES"
      period      = 60
      stat        = "Sum"
      unit        = "Count"
    }
    return_data = false
  }

  threshold           = 1
  comparison_operator = "GreaterThanThreshold"
  evaluation_periods  = 1
  alarm_actions       = var.alarm_actions
}

resource "aws_cloudwatch_metric_alarm" "threadpool-search-rejected" {
  alarm_name = "DIFF(ThreadpoolSearchRejected) >= 1"
  metric_query {
    expression  = "DIFF(threadpoolSearchRejected)"
    id          = "dIFF_threadpoolSearchRejected"
    label       = "Difference in ThreadpoolSearchRejected"
    return_data = true
  }

  metric_query {
    id    = "threadpoolSearchRejected"
    label = "ThreadpoolSearchRejected"
    metric {
      dimensions = {
        DomainName = var.domain_name
        AccountId  = data.aws_caller_identity.current.account_id
      }
      metric_name = "ThreadpoolSearchRejected"
      namespace   = "AWS/ES"
      period      = 60
      stat        = "Sum"
      unit        = "Count"
    }
    return_data = false
  }

  evaluation_periods  = 1
  threshold           = 1
  comparison_operator = "GreaterThanThreshold"

}

resource "aws_cloudwatch_metric_alarm" "number-of-nodes-in-cluster" {
  alarm_name        = "Nodes < NumberOfNodesInCluster, 1 time within 1 day"
  alarm_description = "Email when Nodes < NumberOfNodesInCluster (the number of nodes that are supposed to be in the cluster), 1 time within 1 day"
  namespace         = "AWS/ES"
  dimensions = {
    DomainName = var.domain_name
    AccountId  = data.aws_caller_identity.current.account_id
  }
  statistic           = "Minimum"
  metric_name         = "Nodes"
  comparison_operator = "LessThanThreshold"
  threshold           = var.number_of_nodes_in_cluster
  period              = 86400
  evaluation_periods  = 1
}
