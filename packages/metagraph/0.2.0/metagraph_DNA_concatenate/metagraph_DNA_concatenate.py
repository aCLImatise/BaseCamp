from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean, String

Metagraph_Dna_Concatenate_V0_1_0 = CommandToolBuilder(tool="metagraph_DNA_concatenate", base_command=["metagraph_DNA", "concatenate"], inputs=[ToolInput(tag="in_graph", input_type=Boolean(optional=True), prefix="--graph", doc=InputDocumentation(doc="[STR]        graph representation: succinct / bitmap [succinct]")), ToolInput(tag="in_in_file_base", input_type=Boolean(optional=True), prefix="--infile-base", doc=InputDocumentation(doc="[STR]  load graph chunks from files '<infile-base>.<suffix>.<type>.chunk' []")), ToolInput(tag="in_len_suffix", input_type=Boolean(optional=True), prefix="--len-suffix", doc=InputDocumentation(doc="[INT]   iterate all possible suffixes of the length given [0]")), ToolInput(tag="in_mode", input_type=Boolean(optional=True), prefix="--mode", doc=InputDocumentation(doc="k-mer indexing mode: basic / canonical / primary [basic]")), ToolInput(tag="in_no_postprocessing", input_type=Boolean(optional=True), prefix="--no-postprocessing", doc=InputDocumentation(doc="do not erase redundant dummy edges after concatenation [off]")), ToolInput(tag="in_parallel", input_type=Boolean(optional=True), prefix="--parallel", doc=InputDocumentation(doc="[INT]     use multiple threads for computation [1]")), ToolInput(tag="in_verbose", input_type=Boolean(optional=True), prefix="--verbose", doc=InputDocumentation(doc="switch on verbose output [off]")), ToolInput(tag="in_o", input_type=String(optional=True), prefix="-o", doc=InputDocumentation(doc=""))], outputs=[], container="quay.io/biocontainers/metagraph:0.2.0--h74b8f77_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Metagraph_Dna_Concatenate_V0_1_0().translate("wdl")

