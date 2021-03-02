from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean, String

Amptk_Cluster_V0_1_0 = CommandToolBuilder(tool="amptk_cluster", base_command=["amptk", "cluster"], inputs=[ToolInput(tag="in_fast_q", input_type=Boolean(optional=True), prefix="--fastq", doc=InputDocumentation(doc="Input FASTQ file (Required)")), ToolInput(tag="in_out", input_type=Boolean(optional=True), prefix="--out", doc=InputDocumentation(doc="Output base name. Default: out")), ToolInput(tag="in_max_ee", input_type=Boolean(optional=True), prefix="--maxee", doc=InputDocumentation(doc="Expected error quality trimming. Default: 1.0")), ToolInput(tag="in_pct_otu", input_type=Boolean(optional=True), prefix="--pct_otu", doc=InputDocumentation(doc="OTU Clustering Radius (percent). Default: 97")), ToolInput(tag="in_minsize", input_type=Boolean(optional=True), prefix="--minsize", doc=InputDocumentation(doc="Minimum size to keep (singleton filter). Default: 2")), ToolInput(tag="in_u_chime_ref", input_type=Boolean(optional=True), prefix="--uchime_ref", doc=InputDocumentation(doc="Run Ref Chimera filtering. Default: off [ITS, LSU, COI, 16S, custom path]")), ToolInput(tag="in_map_filtered", input_type=Boolean(optional=True), prefix="--map_filtered", doc=InputDocumentation(doc="Map quality filtered reads back to OTUs. Default: off")), ToolInput(tag="in_u_noise", input_type=Boolean(optional=True), prefix="--unoise", doc=InputDocumentation(doc="Run De-noising pre-clustering (UNOISE). Default: off")), ToolInput(tag="in_debug", input_type=Boolean(optional=True), prefix="--debug", doc=InputDocumentation(doc="Keep intermediate files.")), ToolInput(tag="in_cpus", input_type=Boolean(optional=True), prefix="--cpus", doc=InputDocumentation(doc="Number of CPUs to use. Default: all")), ToolInput(tag="in_u_search", input_type=Boolean(optional=True), prefix="--usearch", doc=InputDocumentation(doc="USEARCH executable. Default: usearch9")), ToolInput(tag="in_arguments", input_type=String(), position=0, doc=InputDocumentation(doc=""))], outputs=[], container="quay.io/biocontainers/amptk:1.5.1--py_1", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Amptk_Cluster_V0_1_0().translate("wdl")

