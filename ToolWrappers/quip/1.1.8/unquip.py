from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String, Boolean, Int

Unquip_V0_1_0 = CommandToolBuilder(tool="unquip", base_command=["unquip"], inputs=[ToolInput(tag="in_input", input_type=String(optional=True), prefix="--input", doc=InputDocumentation(doc="input format (guessed by default)")), ToolInput(tag="in_output", input_type=String(optional=True), prefix="--output", doc=InputDocumentation(doc="output format (guessed by default)")), ToolInput(tag="in_decompress", input_type=Boolean(optional=True), prefix="--decompress", doc=InputDocumentation(doc="decompress (equivalent to '--input=quip')")), ToolInput(tag="in_reference", input_type=String(optional=True), prefix="--reference", doc=InputDocumentation(doc="use a reference sequence (in the FASTA format)\nto compress aligned reads")), ToolInput(tag="in_assembly", input_type=Boolean(optional=True), prefix="--assembly", doc=InputDocumentation(doc="use de novo assembly to potentially increase\ncompression at the cost of being somewhat slower.")), ToolInput(tag="in_assembly_n", input_type=Int(optional=True), prefix="--assembly-n", doc=InputDocumentation(doc="assemble the first n reads (implies --assembly)\n(default: 2500000)")), ToolInput(tag="in_test", input_type=Boolean(optional=True), prefix="--test", doc=InputDocumentation(doc="test compressed file integrity")), ToolInput(tag="in_list", input_type=Boolean(optional=True), prefix="--list", doc=InputDocumentation(doc="list total number of reads and bases")), ToolInput(tag="in_stdout", input_type=Boolean(optional=True), prefix="--stdout", doc=InputDocumentation(doc="write on standard output")), ToolInput(tag="in_force", input_type=Boolean(optional=True), prefix="--force", doc=InputDocumentation(doc="allow overwriting of output files, etc")), ToolInput(tag="in_verbose", input_type=Boolean(optional=True), prefix="--verbose", doc=InputDocumentation(doc="output a great deal of useless information")), ToolInput(tag="in_quip", input_type=String(), position=0, doc=InputDocumentation(doc=""))], outputs=[], container="quay.io/biocontainers/quip:1.1.8--hed695b0_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Unquip_V0_1_0().translate("wdl")

