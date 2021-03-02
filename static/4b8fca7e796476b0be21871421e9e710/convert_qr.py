from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File, String, Int, Boolean

Convert_Qr_V0_1_0 = CommandToolBuilder(tool="convert_qr", base_command=["convert_qr"], inputs=[ToolInput(tag="in_it", input_type=File(optional=True), prefix="--it", doc=InputDocumentation(doc="Input file from QuasiRecomb, usually 'quasispecies.fasta'\nfor transmitter")), ToolInput(tag="in_ir", input_type=File(optional=True), prefix="--ir", doc=InputDocumentation(doc="Input file from QuasiRecomb, usually 'quasispecies.fasta'\nfor recipient")), ToolInput(tag="in_name_write_sequences", input_type=File(optional=True), prefix="-o", doc=InputDocumentation(doc="Name of output file to write sequences to")), ToolInput(tag="in_prefix", input_type=String(optional=True), prefix="--prefix", doc=InputDocumentation(doc="Prefix to use in FASTA header (retains source prefixes if\nnone provided)")), ToolInput(tag="in_mf", input_type=Int(optional=True), prefix="--mf", doc=InputDocumentation(doc="Minimum frequency required for keeping sequence")), ToolInput(tag="in_length_sequences_have", input_type=Int(optional=True), prefix="-L", doc=InputDocumentation(doc="Length of sequences have to be EXACTLY L")), ToolInput(tag="in_translate_sequences_protein", input_type=Boolean(optional=True), prefix="-p", doc=InputDocumentation(doc="Translate sequences into protein sequences"))], outputs=[ToolOutput(tag="out_name_write_sequences", output_type=File(optional=True), selector=InputSelector(input_to_select="in_name_write_sequences", type_hint=File()), doc=OutputDocumentation(doc="Name of output file to write sequences to"))], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Convert_Qr_V0_1_0().translate("wdl", allow_empty_container=True)

