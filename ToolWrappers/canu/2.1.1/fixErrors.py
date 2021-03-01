from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean, File

Fixerrors_V0_1_0 = CommandToolBuilder(tool="fixErrors", base_command=["fixErrors"], inputs=[ToolInput(tag="in_seqstore_path_sequence", input_type=Boolean(optional=True), prefix="-S", doc=InputDocumentation(doc="seqStore           path to a sequence store")), ToolInput(tag="in_red", input_type=File(optional=True), prefix="-red", doc=InputDocumentation(doc="path to the output .red file from findErrors")), ToolInput(tag="in_bgnidendid_output_only", input_type=Boolean(optional=True), prefix="-r", doc=InputDocumentation(doc="bgnID-endID        output only reads bgnID through endID, inclusive")), ToolInput(tag="in_outfasta_write_fasta", input_type=File(optional=True), prefix="-O", doc=InputDocumentation(doc="out.fasta[.gz]     write FASTA to file 'out.fasta, optionally compressing"))], outputs=[ToolOutput(tag="out_red", output_type=File(optional=True), selector=InputSelector(input_to_select="in_red", type_hint=File()), doc=OutputDocumentation(doc="path to the output .red file from findErrors")), ToolOutput(tag="out_outfasta_write_fasta", output_type=File(optional=True), selector=InputSelector(input_to_select="in_outfasta_write_fasta", type_hint=File()), doc=OutputDocumentation(doc="out.fasta[.gz]     write FASTA to file 'out.fasta, optionally compressing"))], container="quay.io/biocontainers/canu:2.1.1--he1b5a44_1", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Fixerrors_V0_1_0().translate("wdl")

