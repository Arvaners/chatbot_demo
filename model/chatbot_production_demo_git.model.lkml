connection: "chatbot_test"

# include all the views
include: "/views/**/*.view.lkml"

datagroup: chatbot_production_demo_git_default_datagroup {
  # sql_trigger: SELECT MAX(id) FROM etl_log;;
  max_cache_age: "1 hour"
}

persist_with: chatbot_production_demo_git_default_datagroup

explore: aggregate {}

explore: chat_summarize_unanswer {}

explore: summary_ticket {}

explore: merge_summary_ticket {}

explore: chat_summarize {}

explore: chatbot_test_summarize {}

explore: chat_summarize_raw {}

explore: update_summary_ticket {}

explore: vw_summary_top_tag {}

explore: top_topic {}

explore: vw_summary_top_customer {}

explore: top_city {}
