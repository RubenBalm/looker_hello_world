view: vw_system_logs_reporting {
  sql_table_name: `sgcd-biengine-prj.sit04_mdm_slog.vw_system_logs_reporting` ;;

  dimension_group: _error_datetime {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    datatype: datetime
    sql: ${TABLE}._error_datetime ;;
    label: "Log Datetime"
  }
  dimension: _error_description {
    type: string
    sql: ${TABLE}._error_description ;;
  }
  dimension: _error_type {
    type: string
    sql: ${TABLE}._error_type ;;
  }
  dimension_group: _etl_load_datetime {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    datatype: datetime
    sql: ${TABLE}._etl_load_datetime ;;
  }
  dimension: _layer_description {
    type: string
    sql: ${TABLE}._layer_description ;;
  }
  dimension: _layer_detail {
    type: string
    sql: ${TABLE}._layer_detail ;;
  }
  dimension: _log_description {
    type: string
    sql: ${TABLE}._log_description ;;
  }
  dimension: _log_reference {
    type: string
    sql: ${TABLE}._log_reference ;;
  }
  dimension: _system_description {
    type: string
    sql: ${TABLE}._system_description ;;
  }
  measure: count {
    type: count
    label: "Logs"
  }
  measure: error_count {
    type: count
    filters: [_error_description: "Error"]
    label: "Error Logs"
  }

  measure: critical_errors {
    type: count
    filters: [_error_description: "Critical"]
    label: "Critical Errors"#Critical
  }


}
