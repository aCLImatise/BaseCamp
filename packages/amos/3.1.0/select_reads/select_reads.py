from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean, File

Select_Reads_V0_1_0 = CommandToolBuilder(tool="select_reads", base_command=["select-reads"], inputs=[ToolInput(tag="in_disregard_bank_locks", input_type=Boolean(optional=True), prefix="-s", doc=InputDocumentation(doc="Disregard bank locks and write permissions (spy mode)")), ToolInput(tag="in_display_compatible_version", input_type=Boolean(optional=True), prefix="-v", doc=InputDocumentation(doc="Display the compatible bank version")), ToolInput(tag="in_specify_file_containing_list_iids_print", input_type=File(optional=True), prefix="-i", doc=InputDocumentation(doc="Specify file containing list of iid's to print")), ToolInput(tag="in_specify_file_containing_list_eids_print", input_type=File(optional=True), prefix="-I", doc=InputDocumentation(doc="Specify file containing list of eid's to print")), ToolInput(tag="in_just_output_eid", input_type=Boolean(optional=True), prefix="-L", doc=InputDocumentation(doc="Just output read names that would be printed by eid")), ToolInput(tag="in_just_output_iid", input_type=Boolean(optional=True), prefix="-l", doc=InputDocumentation(doc="Just output read names that would be printed by iid")), ToolInput(tag="in_automatically_consider_mates", input_type=Boolean(optional=True), prefix="-M", doc=InputDocumentation(doc="Automatically consider mates")), ToolInput(tag="in_nullify_mates_printing", input_type=Boolean(optional=True), prefix="-N", doc=InputDocumentation(doc="Nullify mates in FRG if not printing both mate-pairs")), ToolInput(tag="in_file_list_reads_iids", input_type=File(optional=True), prefix="-x", doc=InputDocumentation(doc="File of list reads iids to exclude")), ToolInput(tag="in_file_list_reads_eids", input_type=File(optional=True), prefix="-X", doc=InputDocumentation(doc="File of list reads eids to exclude")), ToolInput(tag="in_bank_path", input_type=File(), position=0, doc=InputDocumentation(doc=""))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Select_Reads_V0_1_0().translate("wdl", allow_empty_container=True)

