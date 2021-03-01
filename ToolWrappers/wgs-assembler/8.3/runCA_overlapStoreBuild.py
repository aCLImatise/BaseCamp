from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File, String, Boolean

Runca_Overlapstorebuild_V0_1_0 = CommandToolBuilder(tool="runCA_overlapStoreBuild", base_command=["runCA-overlapStoreBuild"], inputs=[ToolInput(tag="in_path_where_created", input_type=File(optional=True), prefix="-d", doc=InputDocumentation(doc="path to location where store should be created")), ToolInput(tag="in_prefix_of_store", input_type=String(optional=True), prefix="-p", doc=InputDocumentation(doc="prefix of store")), ToolInput(tag="in_type_obt_mer", input_type=String(optional=True), prefix="-t", doc=InputDocumentation(doc="type of store: obt dup mer ovl")), ToolInput(tag="in_path_to_gkpstore", input_type=File(optional=True), prefix="-g", doc=InputDocumentation(doc="path to gkpStore")), ToolInput(tag="in_path_input_files", input_type=File(optional=True), prefix="-i", doc=InputDocumentation(doc="path to input files")), ToolInput(tag="in_jobs", input_type=String(optional=True), prefix="-jobs", doc=InputDocumentation(doc="create 'j' sorting jobs")), ToolInput(tag="in_memory", input_type=String(optional=True), prefix="-memory", doc=InputDocumentation(doc="request 'm' gigabytes memory from SGE for sorting")), ToolInput(tag="in_delete_early", input_type=Boolean(optional=True), prefix="-deleteearly", doc=InputDocumentation(doc="delete intermediate files as soon as possible (unsafe)")), ToolInput(tag="in_no_delete", input_type=Boolean(optional=True), prefix="-nodelete", doc=InputDocumentation(doc="do not delete intermediate files")), ToolInput(tag="in_max_error", input_type=String(optional=True), prefix="-maxerror", doc=InputDocumentation(doc="discard overlaps with more than 'e' fraction error (no filtering by default)")), ToolInput(tag="in_submit", input_type=Boolean(optional=True), prefix="-submit", doc=InputDocumentation(doc="automatically submit to SGE"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Runca_Overlapstorebuild_V0_1_0().translate("wdl", allow_empty_container=True)

