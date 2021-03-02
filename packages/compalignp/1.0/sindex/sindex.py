from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File, Boolean, String

Sindex_V0_1_0 = CommandToolBuilder(tool="sindex", base_command=["sindex"], inputs=[ToolInput(tag="in_output_ssi_index", input_type=File(optional=True), prefix="-o", doc=InputDocumentation(doc=": output the SSI index to file named <f>")), ToolInput(tag="in_force_index_mode", input_type=Boolean(optional=True), prefix="--64", doc=InputDocumentation(doc=": force index mode to 64-bit, even on small files")), ToolInput(tag="in_external", input_type=Boolean(optional=True), prefix="--external", doc=InputDocumentation(doc=": force index compilation to use external (on-disk) sorting")), ToolInput(tag="in_in_format", input_type=File(optional=True), prefix="--informat", doc=InputDocumentation(doc=": specify input sequence file format <s>")), ToolInput(tag="in_pfam_seq", input_type=Boolean(optional=True), prefix="--pfamseq", doc=InputDocumentation(doc=": index a FASTA file with >(name) (accession) (desc)")), ToolInput(tag="in_options", input_type=Boolean(optional=True), prefix="-options", doc=InputDocumentation(doc="")), ToolInput(tag="in_available", input_type=String(), position=0, doc=InputDocumentation(doc=""))], outputs=[ToolOutput(tag="out_output_ssi_index", output_type=File(optional=True), selector=InputSelector(input_to_select="in_output_ssi_index", type_hint=File()), doc=OutputDocumentation(doc=": output the SSI index to file named <f>"))], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Sindex_V0_1_0().translate("wdl", allow_empty_container=True)

