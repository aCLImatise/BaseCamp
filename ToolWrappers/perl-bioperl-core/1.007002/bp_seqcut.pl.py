from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String

Bp_Seqcut_Pl_V0_1_0 = CommandToolBuilder(tool="bp_seqcut.pl", base_command=["bp_seqcut.pl"], inputs=[ToolInput(tag="in_help_message", input_type=String(optional=True), prefix="-h", doc=InputDocumentation(doc="help message")), ToolInput(tag="in_residue_start_cutting", input_type=String(optional=True), prefix="-s", doc=InputDocumentation(doc="residue to start cutting on")), ToolInput(tag="in_residue_finish_cutting", input_type=String(optional=True), prefix="-e", doc=InputDocumentation(doc="residue to finish cutting on")), ToolInput(tag="in_files_defaults_fasta", input_type=String(optional=True), prefix="-f", doc=InputDocumentation(doc="of the files, defaults to FASTA but you can specify anything supported by SeqIO from BioPerl")), ToolInput(tag="in_wrap_width_supported", input_type=String(optional=True), prefix="-w", doc=InputDocumentation(doc="wrap width, this might not be supported depending on which format you are using")), ToolInput(tag="in_help", input_type=String(), position=0, doc=InputDocumentation(doc="")), ToolInput(tag="in_of", input_type=String(), position=0, doc=InputDocumentation(doc="")), ToolInput(tag="in_residue", input_type=String(), position=0, doc=InputDocumentation(doc="")), ToolInput(tag="in_wrap", input_type=String(), position=0, doc=InputDocumentation(doc="")), ToolInput(tag="in_the", input_type=String(), position=1, doc=InputDocumentation(doc="")), ToolInput(tag="in_to", input_type=String(), position=1, doc=InputDocumentation(doc="")), ToolInput(tag="in_width", input_type=String(), position=1, doc=InputDocumentation(doc="")), ToolInput(tag="in_files", input_type=String(), position=2, doc=InputDocumentation(doc="")), ToolInput(tag="in_finish", input_type=String(), position=2, doc=InputDocumentation(doc="")), ToolInput(tag="in_start", input_type=String(), position=2, doc=InputDocumentation(doc="")), ToolInput(tag="in_cutting", input_type=String(), position=3, doc=InputDocumentation(doc=""))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Bp_Seqcut_Pl_V0_1_0().translate("wdl", allow_empty_container=True)

