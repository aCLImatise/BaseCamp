from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Array, String, Int, File

Methylpy_Build_Reference_V0_1_0 = CommandToolBuilder(tool="methylpy_build_reference", base_command=["methylpy", "build-reference"], inputs=[ToolInput(tag="in_input_files", input_type=Array(t=String(), optional=True), prefix="--input-files", doc=InputDocumentation(doc="List of genome fasta files to build a reference from.\n(default: None)")), ToolInput(tag="in_output_prefix", input_type=String(optional=True), prefix="--output-prefix", doc=InputDocumentation(doc="the prefix of the two output reference files that will\nbe created. (default: None)")), ToolInput(tag="in_num_procs", input_type=Int(optional=True), prefix="--num-procs", doc=InputDocumentation(doc="Number of processors you wish to use to parallelize\nthis function (default: 1)")), ToolInput(tag="in_aligner", input_type=Int(optional=True), prefix="--aligner", doc=InputDocumentation(doc="Aligner to use. Currently, methylpy supports bowtie,\nbowtie2 and minimap2. (default: bowtie2)")), ToolInput(tag="in_path_to_aligner", input_type=File(optional=True), prefix="--path-to-aligner", doc=InputDocumentation(doc="Path to bowtie/bowtie2 installation (default: )")), ToolInput(tag="in_buff_size", input_type=Int(optional=True), prefix="--buffsize", doc=InputDocumentation(doc="The number of bytes that will be read in from the\nreference at once. (default: 100)\n"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Methylpy_Build_Reference_V0_1_0().translate("wdl", allow_empty_container=True)

