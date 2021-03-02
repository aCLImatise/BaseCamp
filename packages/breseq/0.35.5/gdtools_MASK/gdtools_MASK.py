from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean, File

Gdtools_Mask_V0_1_0 = CommandToolBuilder(tool="gdtools_MASK", base_command=["gdtools", "MASK"], inputs=[ToolInput(tag="in_small", input_type=Boolean(optional=True), prefix="--small", doc=InputDocumentation(doc="Mask only 'small' mutations defined as: all SNP mutations; INS, DEL, and SUB mutations with sizes ≤ 20 bp; and all INS and DEL mutations causing expansion or contraction of simple sequence repeats (SSRs) with at least two repeats of the same unit of one to several bp and a total length of 5 bp in the reference genome. If these mutations are marked as 'mediated' or 'between' repeats, then they are NOT removed.")), ToolInput(tag="in_output", input_type=File(optional=True), prefix="--output", doc=InputDocumentation(doc="Output Genome Diff file. (DEFAULT=output.gd)")), ToolInput(tag="in_verbose", input_type=Boolean(optional=True), prefix="--verbose", doc=InputDocumentation(doc="Verbose mode"))], outputs=[ToolOutput(tag="out_output", output_type=File(optional=True), selector=InputSelector(input_to_select="in_output", type_hint=File()), doc=OutputDocumentation(doc="Output Genome Diff file. (DEFAULT=output.gd)"))], container="quay.io/biocontainers/breseq:0.35.5--h8b12597_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Gdtools_Mask_V0_1_0().translate("wdl")

