from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File, Boolean, String

Bank_Report_V0_1_0 = CommandToolBuilder(tool="bank_report", base_command=["bank-report"], inputs=[ToolInput(tag="in_directory_path_report", input_type=File(optional=True), prefix="-b", doc=InputDocumentation(doc="The directory path of the bank to report")), ToolInput(tag="in_include_bids_output", input_type=Boolean(optional=True), prefix="-B", doc=InputDocumentation(doc="Include BIDs in the output messages (for debugging)")), ToolInput(tag="in_report_only_objects_matching_eids", input_type=File(optional=True), prefix="-E", doc=InputDocumentation(doc="Report only objects matching EIDs in file")), ToolInput(tag="in_report_only_objects_matching_iids", input_type=File(optional=True), prefix="-I", doc=InputDocumentation(doc="Report only objects matching IIDs in file")), ToolInput(tag="in_display_progress_information", input_type=Boolean(optional=True), prefix="-p", doc=InputDocumentation(doc="Don't display progress information")), ToolInput(tag="in_display_only_objects", input_type=Boolean(optional=True), prefix="-i", doc=InputDocumentation(doc="Display only the objects ids")), ToolInput(tag="in_disregard_bank_locks", input_type=Boolean(optional=True), prefix="-s", doc=InputDocumentation(doc="Disregard bank locks and write permissions (spy mode)")), ToolInput(tag="in_just_dump_information", input_type=Boolean(optional=True), prefix="-F", doc=InputDocumentation(doc="Just dump the fixed store information")), ToolInput(tag="in_display_compatible_version", input_type=Boolean(optional=True), prefix="-v", doc=InputDocumentation(doc="Display the compatible bank version")), ToolInput(tag="in_bank_report", input_type=String(), position=0, doc=InputDocumentation(doc="[options]  -b <bank path>  [NCodes]"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Bank_Report_V0_1_0().translate("wdl", allow_empty_container=True)

