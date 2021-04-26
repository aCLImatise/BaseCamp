from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean

Gifrop_V0_1_0 = CommandToolBuilder(tool="gifrop", base_command=["gifrop"], inputs=[ToolInput(tag="in_threads", input_type=Boolean(optional=True), prefix="--threads", doc=InputDocumentation(doc="Number of threads to use for parallel abricate commands")), ToolInput(tag="in_no_plots", input_type=Boolean(optional=True), prefix="--no_plots", doc=InputDocumentation(doc="Don't generate plots")), ToolInput(tag="in_min_genes", input_type=Boolean(optional=True), prefix="--min_genes", doc=InputDocumentation(doc="Only return islands with greater than this many genes (4)")), ToolInput(tag="in_flank_dna", input_type=Boolean(optional=True), prefix="--flank_dna", doc=InputDocumentation(doc="output this many bases of DNA on either side of each island (0)")), ToolInput(tag="in_reference", input_type=Boolean(optional=True), prefix="--reference", doc=InputDocumentation(doc="Find genomic islands relative to this reference")), ToolInput(tag="in_get_islands", input_type=Boolean(optional=True), prefix="--get_islands", doc=InputDocumentation(doc="Run the main program to extract genomic islands")), ToolInput(tag="in_split_islands", input_type=Boolean(optional=True), prefix="--split_islands", doc=InputDocumentation(doc="Write one fasta file for each genomic island")), ToolInput(tag="in_s_cut", input_type=Boolean(optional=True), prefix="--scut", doc=InputDocumentation(doc="prune edges with OC less than scut before secondary cluster (.5)")), ToolInput(tag="in_t_cut", input_type=Boolean(optional=True), prefix="--tcut", doc=InputDocumentation(doc="prune edges with OC less than tcut before tertiary cluster (.75)")), ToolInput(tag="in_q_cut", input_type=Boolean(optional=True), prefix="--qcut", doc=InputDocumentation(doc="prune edges with jaccard sim less than qcut before quat cluster (.75)"))], outputs=[], container="quay.io/biocontainers/gifrop:0.0.9--hdfd78af_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Gifrop_V0_1_0().translate("wdl")

