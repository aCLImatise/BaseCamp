from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean, String, File

Flippyr_V0_1_0 = CommandToolBuilder(tool="flippyr", base_command=["flippyr"], inputs=[ToolInput(tag="in_silent", input_type=Boolean(optional=True), prefix="--silent", doc=InputDocumentation(doc="Supress output to stdout.")), ToolInput(tag="in_plink", input_type=Boolean(optional=True), prefix="--plink", doc=InputDocumentation(doc="Run the plink command.")), ToolInput(tag="in_plink_mem", input_type=String(optional=True), prefix="--plinkMem", doc=InputDocumentation(doc="Set the memory limit for plink.")), ToolInput(tag="in_output_prefix", input_type=File(optional=True), prefix="--outputPrefix", doc=InputDocumentation(doc="Change output file prefix.")), ToolInput(tag="in_output_suffix", input_type=File(optional=True), prefix="--outputSuffix", doc=InputDocumentation(doc="Change output file suffix for plink file.")), ToolInput(tag="in_keep_multi_allelic", input_type=Boolean(optional=True), prefix="--keepMultiallelic", doc=InputDocumentation(doc="Do not delete multiallelic sites.")), ToolInput(tag="in_keep_indels", input_type=Boolean(optional=True), prefix="--keepIndels", doc=InputDocumentation(doc="Do not delete insertions/deletions.")), ToolInput(tag="in_fast_a", input_type=String(), position=0, doc=InputDocumentation(doc="Fasta file containing all chromosomes in the plink")), ToolInput(tag="in_fileset", input_type=String(), position=1, doc=InputDocumentation(doc="bim                   .bim file from binary plink fileset."))], outputs=[ToolOutput(tag="out_output_prefix", output_type=File(optional=True), selector=InputSelector(input_to_select="in_output_prefix", type_hint=File()), doc=OutputDocumentation(doc="Change output file prefix.")), ToolOutput(tag="out_output_suffix", output_type=File(optional=True), selector=InputSelector(input_to_select="in_output_suffix", type_hint=File()), doc=OutputDocumentation(doc="Change output file suffix for plink file."))], container="quay.io/biocontainers/flippyr:0.4.0--pyh3252c3a_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Flippyr_V0_1_0().translate("wdl")

