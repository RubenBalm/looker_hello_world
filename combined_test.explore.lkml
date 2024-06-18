include:"/views/*.view.lkml"


datagroup: gist_refresh_rate_datagroup {
  # sql_trigger: SELECT MAX(id) FROM etl_log;;
  max_cache_age: "1 hour"
}

persist_with: test_refresh_rate_datagroup

explore: combined {
  from: combined_vw
}
