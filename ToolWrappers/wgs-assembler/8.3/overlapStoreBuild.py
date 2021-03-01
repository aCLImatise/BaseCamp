from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File, String, Boolean, Int

Overlapstorebuild_V0_1_0 = CommandToolBuilder(tool="overlapStoreBuild", base_command=["overlapStoreBuild"], inputs=[ToolInput(tag="in_path_store_create", input_type=File(optional=True), prefix="-o", doc=InputDocumentation(doc="path to store to create")), ToolInput(tag="in_path_gkpstore_assembly", input_type=File(optional=True), prefix="-g", doc=InputDocumentation(doc="path to gkpStore for this assembly")), ToolInput(tag="in_use_files_store", input_type=String(optional=True), prefix="-F", doc=InputDocumentation(doc="use up to 'f' files for store creation")), ToolInput(tag="in_use_mb_memory", input_type=String(optional=True), prefix="-M", doc=InputDocumentation(doc="use up to 'm' MB memory for store creation")), ToolInput(tag="in_plc", input_type=String(optional=True), prefix="-plc", doc=InputDocumentation(doc="type of filtering for PLC fragments -- NOT SUPPORTED")), ToolInput(tag="in_obt", input_type=Boolean(optional=True), prefix="-obt", doc=InputDocumentation(doc="filter overlaps for OBT")), ToolInput(tag="in_dup", input_type=Boolean(optional=True), prefix="-dup", doc=InputDocumentation(doc="filter overlaps for OBT/dedupe")), ToolInput(tag="in_filter_overlaps_e", input_type=String(optional=True), prefix="-e", doc=InputDocumentation(doc="filter overlaps above e fraction error")), ToolInput(tag="in_read_input_filenames", input_type=File(optional=True), prefix="-L", doc=InputDocumentation(doc="read input filenames from 'flieList'")), ToolInput(tag="in_big", input_type=Int(optional=True), prefix="-big", doc=InputDocumentation(doc="handle a large number of overlaps in the last library\niid is the first read iid in the last library, from\n'gatekeeper -dumpinfo *gkpStore'")), ToolInput(tag="in_opts", input_type=String(optional=True), position=0, doc=InputDocumentation(doc=""))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Overlapstorebuild_V0_1_0().translate("wdl", allow_empty_container=True)

