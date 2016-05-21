DATA_DIR_NAME="data-inc-prod"

export DC_FORMS_DEFAULT=/Users/ulrik/source/skf/${DATA_DIR_NAME}/forms_default
export DC_FORMS=/Users/ulrik/source/skf/${DATA_DIR_NAME}/forms
export DC_PUBLIC_FORMS=/Users/ulrik/source/skf/${DATA_DIR_NAME}/public/forms
export DC_MEDIA=/Users/ulrik/source/skf/${DATA_DIR_NAME}/media
export DC_REPORTS=/Users/ulrik/source/skf/${DATA_DIR_NAME}/reports
export DC_TEST_USE_TEMP_DIR_FOR_GENERATED_DATA=true
export DC_DB_URL="jdbc:mysql://127.0.0.1:3306/prod160414?useUnicode=true&characterEncoding=utf-8"
export DC_BOX_CLIENT_ID="dummyId"
export DC_BOX_CLIENT_SECRET="dummySecret"

# Audit consumer write dir
export AC_RAW_REPORT_WRITE_DIR=/Users/ulrik/source/skf/${DATA_DIR_NAME}/audit/raw-reports
export AC_REPORT_WRITE_DIR=/Users/ulrik/source/skf/${DATA_DIR_NAME}/audit/reports



# Nginx work dir
export NGINX_WORK_DIR=~/source/skf/datacollect-dev-localproxy/

# Report tool log dir
export WEBAPP_LOG_DIR=/Users/ulrik/source/skf/reporttool/logs
