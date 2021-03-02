from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File, String, Boolean

Overlapstorebucketizer_V0_1_0 = CommandToolBuilder(tool="overlapStoreBucketizer", base_command=["overlapStoreBucketizer"], inputs=[ToolInput(tag="in_path_store_create", input_type=File(optional=True), prefix="-c", doc=InputDocumentation(doc="path to store to create")), ToolInput(tag="in_path_gkpstore_assembly", input_type=File(optional=True), prefix="-g", doc=InputDocumentation(doc="path to gkpStore for this assembly")), ToolInput(tag="in_input_overlaps", input_type=File(optional=True), prefix="-i", doc=InputDocumentation(doc="input overlaps")), ToolInput(tag="in_job", input_type=File(optional=True), prefix="-job", doc=InputDocumentation(doc="index of this overlap input file")), ToolInput(tag="in_use_files_store", input_type=String(optional=True), prefix="-F", doc=InputDocumentation(doc="use up to 'f' files for store creation")), ToolInput(tag="in_plc", input_type=String(optional=True), prefix="-plc", doc=InputDocumentation(doc="type of filtering for PLC fragments -- NOT SUPPORTED")), ToolInput(tag="in_obt", input_type=Boolean(optional=True), prefix="-obt", doc=InputDocumentation(doc="filter overlaps for OBT")), ToolInput(tag="in_dup", input_type=Boolean(optional=True), prefix="-dup", doc=InputDocumentation(doc="filter overlaps for OBT/dedupe")), ToolInput(tag="in_filter_overlaps_e", input_type=String(optional=True), prefix="-e", doc=InputDocumentation(doc="filter overlaps above e fraction error")), ToolInput(tag="in_raw", input_type=Boolean(optional=True), prefix="-raw", doc=InputDocumentation(doc="write uncompressed buckets")), ToolInput(tag="in_opts", input_type=String(optional=True), position=0, doc=InputDocumentation(doc=""))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Overlapstorebucketizer_V0_1_0().translate("wdl", allow_empty_container=True)

