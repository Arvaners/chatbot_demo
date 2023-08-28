view: chatbot_test_summarize {
  sql_table_name: `bi-dashboard-dev.chatbot.chatbot_test_summarize` ;;

  dimension: answer {
    type: string
    sql: ${TABLE}.answer ;;
  }
  dimension: babbage_similarity {
    type: string
    sql: ${TABLE}.babbage_similarity ;;
  }
  dimension: cluster {
    type: number
    sql: ${TABLE}.Cluster ;;
  }
  dimension: conversation_id {
    type: string
    sql: ${TABLE}.conversation_id ;;
  }
  dimension: topic {
    type: string
    sql: ${TABLE}.Topic ;;
  }
  measure: count {
    type: count
  }
}
