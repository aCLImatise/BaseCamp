from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean, File, Int, Directory

Pbhoover_V0_1_0 = CommandToolBuilder(tool="pbhoover", base_command=["pbhoover"], inputs=[ToolInput(tag="in_consensus", input_type=Boolean(optional=True), prefix="--consensus", doc=InputDocumentation(doc="Call consensus (output all positions to VCF)")), ToolInput(tag="in_input", input_type=File(optional=True), prefix="--input", doc=InputDocumentation(doc="Input cmp.h5 file")), ToolInput(tag="in_output", input_type=File(optional=True), prefix="--output", doc=InputDocumentation(doc="Output VCF file name, stdout by default")), ToolInput(tag="in_reference", input_type=File(optional=True), prefix="--reference", doc=InputDocumentation(doc="Reference FASTA file for indel normalization")), ToolInput(tag="in_nproc", input_type=Int(optional=True), prefix="--nproc", doc=InputDocumentation(doc="number of processors to be used, uses all available by\ndefault")), ToolInput(tag="in_chunksize", input_type=Int(optional=True), prefix="--chunksize", doc=InputDocumentation(doc="Genome chunk size used for parallelizaton, 5000 by\ndefault")), ToolInput(tag="in_tempdir", input_type=Directory(optional=True), prefix="--tempdir", doc=InputDocumentation(doc="Temporary directory for analysis. Current directory is\ndefault")), ToolInput(tag="in_debug", input_type=Boolean(optional=True), prefix="--debug", doc=InputDocumentation(doc="Flag for debugging purposes. Writes more information\nto log\n"))], outputs=[ToolOutput(tag="out_output", output_type=File(optional=True), selector=InputSelector(input_to_select="in_output", type_hint=File()), doc=OutputDocumentation(doc="Output VCF file name, stdout by default"))], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Pbhoover_V0_1_0().translate("wdl", allow_empty_container=True)

