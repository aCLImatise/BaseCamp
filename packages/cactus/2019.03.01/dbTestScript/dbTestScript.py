from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean

Dbtestscript_V0_1_0 = CommandToolBuilder(tool="dbTestScript", base_command=["dbTestScript"], inputs=[ToolInput(tag="in_loglevel", input_type=Boolean(optional=True), prefix="--logLevel", doc=InputDocumentation(doc=": Set the log level")), ToolInput(tag="in_database_conf", input_type=Boolean(optional=True), prefix="--databaseConf", doc=InputDocumentation(doc=": The database connection script")), ToolInput(tag="in_first_key", input_type=Boolean(optional=True), prefix="--firstKey", doc=InputDocumentation(doc=": First key.")), ToolInput(tag="in_key_number", input_type=Boolean(optional=True), prefix="--keyNumber", doc=InputDocumentation(doc=": Total number of keys.")), ToolInput(tag="in_add_records", input_type=Boolean(optional=True), prefix="--addRecords", doc=InputDocumentation(doc=": Add records instead of getting them.")), ToolInput(tag="in_set_records", input_type=Boolean(optional=True), prefix="--setRecords", doc=InputDocumentation(doc=": After adding/getting records, set the records.")), ToolInput(tag="in_min_record_size", input_type=Boolean(optional=True), prefix="--minRecordSize", doc=InputDocumentation(doc=": Min size of record.")), ToolInput(tag="in_create", input_type=Boolean(optional=True), prefix="--create", doc=InputDocumentation(doc=": Make the database."))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Dbtestscript_V0_1_0().translate("wdl", allow_empty_container=True)

