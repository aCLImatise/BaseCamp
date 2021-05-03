from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File, Int, String

Haploflow_V0_1_0 = CommandToolBuilder(tool="haploflow", base_command=["haploflow"], inputs=[ToolInput(tag="in_read_file", input_type=File(optional=True), prefix="--read-file", doc=InputDocumentation(doc="read file (fastq)")), ToolInput(tag="in_dump_file", input_type=File(optional=True), prefix="--dump-file", doc=InputDocumentation(doc="deBruijn graph dump file produced by")), ToolInput(tag="in_kmer_size_default", input_type=Int(optional=True), prefix="--k", doc=InputDocumentation(doc="(=41)                    k-mer size, default 41, please use an odd")), ToolInput(tag="in_create_dump", input_type=File(optional=True), prefix="--create-dump", doc=InputDocumentation(doc="create dump of the deBruijn graph. WARNING:\nThis file may be huge")), ToolInput(tag="in_from_dump", input_type=String(optional=True), prefix="--from-dump", doc=InputDocumentation(doc="run from a Haploflow dump of the deBruijn")), ToolInput(tag="in_strict", input_type=Int(optional=True), prefix="--strict", doc=InputDocumentation(doc="(=1)                more strict error correction, should be set\nto 5 in first run on new data set to reduce\nrun time. Set to 0 if low abundant strains\nare expected to be present")), ToolInput(tag="in_filter", input_type=Int(optional=True), prefix="--filter", doc=InputDocumentation(doc="(=500)              filter contigs shorter than value")), ToolInput(tag="in_thresh", input_type=Int(optional=True), prefix="--thresh", doc=InputDocumentation(doc="(=-1)               Provide a custom threshold for complex/bad\ndata\n")), ToolInput(tag="in_haplo_flow", input_type=String(), position=0, doc=InputDocumentation(doc="--log arg                        log file (default: standard out)")), ToolInput(tag="in_number", input_type=Int(), position=1, doc=InputDocumentation(doc="--out arg                        folder for output, will be created if not ")), ToolInput(tag="in_overwritten", input_type=String(), position=0, doc=InputDocumentation(doc="--error-rate arg (=0.0199999996) percentage filter for erroneous kmers - ")), ToolInput(tag="in_graph_dot", input_type=String(), position=0, doc=InputDocumentation(doc="--two-strain arg (=0)            mode for known two-strain mixtures"))], outputs=[], container="quay.io/biocontainers/haploflow:0.1--hee3b9ab_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Haploflow_V0_1_0().translate("wdl")

