from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File, Boolean

Bp_Nrdb_Pl_V0_1_0 = CommandToolBuilder(tool="bp_nrdb.pl", base_command=["bp_nrdb.pl"], inputs=[ToolInput(tag="in_filename_db_written", input_type=File(optional=True), prefix="-o", doc=InputDocumentation(doc="- the filename the db is written (STDOUT by default)")), ToolInput(tag="in__filename_append", input_type=File(optional=True), prefix="-a", doc=InputDocumentation(doc="- the filename to append the db to")), ToolInput(tag="in_minimum_required_sequence", input_type=Boolean(optional=True), prefix="-l", doc=InputDocumentation(doc="#                  - minimum required sequence length")), ToolInput(tag="in__check_duplicates", input_type=Boolean(optional=True), prefix="-i", doc=InputDocumentation(doc="- do not check for duplicates")), ToolInput(tag="in_max_number_descriptions", input_type=Boolean(optional=True), prefix="-n", doc=InputDocumentation(doc="#                  - max number of descriptions to report per seq")), ToolInput(tag="in_delimiter_use_consecutive", input_type=Boolean(optional=True), prefix="-d", doc=InputDocumentation(doc="#                  - delimiter to use between consecutive descriptions")), ToolInput(tag="in_use_database_prefixes", input_type=Boolean(optional=True), prefix="-p", doc=InputDocumentation(doc="- use database id prefixes from command line"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Bp_Nrdb_Pl_V0_1_0().translate("wdl", allow_empty_container=True)

