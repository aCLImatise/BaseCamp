from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File, String, Boolean

Msp2Db_V0_1_0 = CommandToolBuilder(tool="msp2db", base_command=["msp2db"], inputs=[ToolInput(tag="in_msp_pth", input_type=File(optional=True), prefix="--msp_pth", doc=InputDocumentation(doc="Path to the MSP file (or directory of msp files)")), ToolInput(tag="in_source", input_type=String(optional=True), prefix="--source", doc=InputDocumentation(doc="Name of data source (e.g. MassBank, LipidBlast)")), ToolInput(tag="in_out_pth", input_type=File(optional=True), prefix="--out_pth", doc=InputDocumentation(doc="File path for SQLite database")), ToolInput(tag="in_db_type", input_type=String(optional=True), prefix="--db_type", doc=InputDocumentation(doc="Database type [mysql, sqlite]")), ToolInput(tag="in_delete_tables", input_type=Boolean(optional=True), prefix="--delete_tables", doc=InputDocumentation(doc="Delete tables")), ToolInput(tag="in_ms_level", input_type=File(optional=True), prefix="--mslevel", doc=InputDocumentation(doc="MS level of fragmentation if not detailed in msp file")), ToolInput(tag="in_polarity", input_type=File(optional=True), prefix="--polarity", doc=InputDocumentation(doc="Polarity of fragmentation if not detailed in msp file")), ToolInput(tag="in_chunk", input_type=String(optional=True), prefix="--chunk", doc=InputDocumentation(doc="Chunks of spectra to parse data (useful to control\nmemory usage)")), ToolInput(tag="in_schema", input_type=String(optional=True), prefix="--schema", doc=InputDocumentation(doc="Type of schema used (by default is 'mona' msp style\nbut can use 'massbank' style")), ToolInput(tag="in_ignore_compound_lookup", input_type=Boolean(optional=True), prefix="--ignore_compound_lookup", doc=InputDocumentation(doc="ignore searching of compounds for each spectra based\non meta information in the MSP file")), ToolInput(tag="in_prog", input_type=String(), position=0, doc=InputDocumentation(doc=""))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Msp2Db_V0_1_0().translate("wdl", allow_empty_container=True)

