from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Int, Boolean, String

Saffrontree_V0_1_0 = CommandToolBuilder(tool="saffrontree", base_command=["saffrontree"], inputs=[ToolInput(tag="in_km_er", input_type=Int(optional=True), prefix="--kmer", doc=InputDocumentation(doc="Kmer to use, depends on read length [31]")), ToolInput(tag="in_min_km_ers_threshold", input_type=Int(optional=True), prefix="--min_kmers_threshold", doc=InputDocumentation(doc="Exclude k-mers occurring less than this [5]")), ToolInput(tag="in_max_km_ers_threshold", input_type=Int(optional=True), prefix="--max_kmers_threshold", doc=InputDocumentation(doc="Exclude k-mers occurring more than this [255]")), ToolInput(tag="in_threads", input_type=Int(optional=True), prefix="--threads", doc=InputDocumentation(doc="Number of threads [1]")), ToolInput(tag="in_keep_files", input_type=Boolean(optional=True), prefix="--keep_files", doc=InputDocumentation(doc="Keep intermediate files [False]")), ToolInput(tag="in_verbose", input_type=Boolean(optional=True), prefix="--verbose", doc=InputDocumentation(doc="Turn on more debugging output [False]")), ToolInput(tag="in_output_directory", input_type=String(), position=0, doc=InputDocumentation(doc="Output directory")), ToolInput(tag="in_input_files", input_type=String(), position=1, doc=InputDocumentation(doc="FASTQ/FASTA files which may be gzipped"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Saffrontree_V0_1_0().translate("wdl", allow_empty_container=True)

