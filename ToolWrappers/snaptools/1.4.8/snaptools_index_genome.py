from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File, Int

Snaptools_Index_Genome_V0_1_0 = CommandToolBuilder(tool="snaptools_index_genome", base_command=["snaptools", "index-genome"], inputs=[ToolInput(tag="in_input_fast_a", input_type=File(optional=True), prefix="--input-fasta", doc=InputDocumentation(doc="genome fasta file to build the index from (default:\nNone)")), ToolInput(tag="in_output_prefix", input_type=File(optional=True), prefix="--output-prefix", doc=InputDocumentation(doc="prefix of indexed file (default: None)")), ToolInput(tag="in_aligner", input_type=Int(optional=True), prefix="--aligner", doc=InputDocumentation(doc="aligner to use. Currently, snaptools supports bwa,\nbowtie, bowtie2 and minimap2. (default: bwa)")), ToolInput(tag="in_path_to_aligner", input_type=File(optional=True), prefix="--path-to-aligner", doc=InputDocumentation(doc="path to fold that contains bwa (default: None)")), ToolInput(tag="in_num_threads", input_type=Int(optional=True), prefix="--num-threads", doc=InputDocumentation(doc="=number of indexing threads (default: 3)\n"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Snaptools_Index_Genome_V0_1_0().translate("wdl", allow_empty_container=True)

