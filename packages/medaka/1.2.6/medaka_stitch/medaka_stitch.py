from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean, Array, String, Int

Medaka_Stitch_V0_1_0 = CommandToolBuilder(tool="medaka_stitch", base_command=["medaka", "stitch"], inputs=[ToolInput(tag="in_debug", input_type=Boolean(optional=True), prefix="--debug", doc=InputDocumentation(doc="Verbose logging of debug information. (default: 20)")), ToolInput(tag="in_quiet", input_type=Boolean(optional=True), prefix="--quiet", doc=InputDocumentation(doc="Minimal logging; warnings only). (default: 20)")), ToolInput(tag="in_regions", input_type=Array(t=String(), optional=True), prefix="--regions", doc=InputDocumentation(doc="Genomic ref_names to process, or a bed file. (default:\nNone)")), ToolInput(tag="in_threads", input_type=Int(optional=True), prefix="--threads", doc=InputDocumentation(doc="Number of worker processes to use. (default: 1)")), ToolInput(tag="in_no_fill_gaps", input_type=Boolean(optional=True), prefix="--no-fillgaps", doc=InputDocumentation(doc="Don't fill gaps in consensus sequence with draft\nsequence. (default: True)\n")), ToolInput(tag="in_inputs", input_type=String(), position=0, doc=InputDocumentation(doc="Consensus .hdf files.")), ToolInput(tag="in_draft", input_type=String(), position=1, doc=InputDocumentation(doc="Draft .fasta. Consensus gaps will be filled with\nunpolished draft sequence to avoid contig\nfragmentation.")), ToolInput(tag="in_output", input_type=String(), position=2, doc=InputDocumentation(doc="Output .fasta."))], outputs=[], container="quay.io/biocontainers/medaka:1.2.6--py38h64b100c_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Medaka_Stitch_V0_1_0().translate("wdl")

