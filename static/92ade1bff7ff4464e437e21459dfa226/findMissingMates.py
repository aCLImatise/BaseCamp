from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean, String

Findmissingmates_V0_1_0 = CommandToolBuilder(tool="findMissingMates", base_command=["findMissingMates"], inputs=[ToolInput(tag="in_disregard_bank_locks", input_type=Boolean(optional=True), prefix="-s", doc=InputDocumentation(doc="Disregard bank locks and write permissions (spy mode)")), ToolInput(tag="in_display_compatible_version", input_type=Boolean(optional=True), prefix="-v", doc=InputDocumentation(doc="Display the compatible bank version")), ToolInput(tag="in_looks_mates_virtue", input_type=Boolean(optional=True), prefix="-S", doc=InputDocumentation(doc="Looks for mates by virtue of the scaffold")), ToolInput(tag="in_only_display_mates", input_type=Boolean(optional=True), prefix="-M", doc=InputDocumentation(doc="Only display missing mates (not reads already present in range)")), ToolInput(tag="in_use_mate_information", input_type=Boolean(optional=True), prefix="-m", doc=InputDocumentation(doc="Don't use mate information, just read tiling")), ToolInput(tag="in_contig_eid_interest", input_type=String(optional=True), prefix="-E", doc=InputDocumentation(doc="Contig eid of interest")), ToolInput(tag="in_contig_iid_interest", input_type=String(optional=True), prefix="-I", doc=InputDocumentation(doc="Contig iid of interest")), ToolInput(tag="in_start_of_range", input_type=String(optional=True), prefix="-x", doc=InputDocumentation(doc="Start of range")), ToolInput(tag="in_end_of_range", input_type=String(optional=True), prefix="-y", doc=InputDocumentation(doc="End of range")), ToolInput(tag="in_find_missing_mates", input_type=String(), position=0, doc=InputDocumentation(doc="[options]  -b <bank path>"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Findmissingmates_V0_1_0().translate("wdl", allow_empty_container=True)

