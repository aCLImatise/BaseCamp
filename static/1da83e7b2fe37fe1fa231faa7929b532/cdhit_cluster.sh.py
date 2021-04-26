from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File, Int, String

Cdhit_Cluster_Sh_V0_1_0 = CommandToolBuilder(tool="cdhit_cluster.sh", base_command=["cdhit_cluster.sh"], inputs=[ToolInput(tag="in_file_fasta_format", input_type=File(optional=True), prefix="-i", doc=InputDocumentation(doc="file in FASTA format")), ToolInput(tag="in_threshold_cluster_default", input_type=Int(optional=True), prefix="-c", doc=InputDocumentation(doc="threshold to cluster, default 80")), ToolInput(tag="in_command_default_cdhitest", input_type=String(optional=True), prefix="-H", doc=InputDocumentation(doc="command, default cd-hit-est")), ToolInput(tag="in_available_memory_mbyte", input_type=Int(optional=True), prefix="-M", doc=InputDocumentation(doc="available memory (Mbyte), default 400")), ToolInput(tag="in_name", input_type=File(optional=True), prefix="-n", doc=InputDocumentation(doc="name")), ToolInput(tag="in_difference_cutoff_default", input_type=Int(optional=True), prefix="-s", doc=InputDocumentation(doc="difference cutoff, default 0.8")), ToolInput(tag="in_name_optional_unset", input_type=String(optional=True), prefix="-g", doc=InputDocumentation(doc="name (optional). If unset, samples will be gathered in NO_GROUP group")), ToolInput(tag="in_psicdhit_instead_cdhit", input_type=String(optional=True), prefix="-p", doc=InputDocumentation(doc="psi-cd-hit instead of cd-hit")), ToolInput(tag="in_only_circular_sequences", input_type=Int(optional=True), prefix="-C", doc=InputDocumentation(doc="only: circular sequences, default 1. If set to 0 sequence is assumed lineal")), ToolInput(tag="in_only_gobal_identity", input_type=Int(optional=True), prefix="-G", doc=InputDocumentation(doc="only: gobal identity, -G 0 only takes the first local alignment for clustering")), ToolInput(tag="in_only_choose_blastn", input_type=String(optional=True), prefix="-b", doc=InputDocumentation(doc="only: choose blast program, default blastn")), ToolInput(tag="in_of_threads", input_type=Int(optional=True), prefix="-T", doc=InputDocumentation(doc="of threads")), ToolInput(tag="in_usage_message", input_type=String(optional=True), prefix="-v", doc=InputDocumentation(doc="usage message"))], outputs=[], container="quay.io/biocontainers/plasmidid:1.6.5--hdfd78af_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Cdhit_Cluster_Sh_V0_1_0().translate("wdl")

