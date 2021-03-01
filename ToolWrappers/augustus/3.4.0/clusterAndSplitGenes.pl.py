from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean, Int, String, Directory, File

Clusterandsplitgenes_Pl_V0_1_0 = CommandToolBuilder(tool="clusterAndSplitGenes.pl", base_command=["clusterAndSplitGenes.pl"], inputs=[ToolInput(tag="in_verbose", input_type=Boolean(optional=True), prefix="--verbose", doc=InputDocumentation(doc="threshold: minimal number of dependencies between two genes\nin order to force them into same cluster (default: 10)")), ToolInput(tag="in_tx_format", input_type=Boolean(optional=True), prefix="--txformat", doc=InputDocumentation(doc="commonfile holds transcript ids instead of gene ids\nthe mapping given by the --genes file is used to map transcript ids to gene ids")), ToolInput(tag="in_chunksize", input_type=Int(optional=True), prefix="--chunksize", doc=InputDocumentation(doc="number of genes per chunk (default: 3000)")), ToolInput(tag="in_genes", input_type=String(optional=True), prefix="--genes", doc=InputDocumentation(doc="gene set in GTF format that is split accoring to clustering")), ToolInput(tag="in_genes_prefix", input_type=Directory(optional=True), prefix="--genesprefix", doc=InputDocumentation(doc="prefix for GTF output, can include directory (default: value of --genes)")), ToolInput(tag="in_filter_map", input_type=String(optional=True), prefix="--filtermap", doc=InputDocumentation(doc="prefix for short alignment output (default: value of --filtermap)")), ToolInput(tag="in_clusters", input_type=File(optional=True), prefix="--clusters", doc=InputDocumentation(doc="output file with clusters")), ToolInput(tag="in_max_cluster_size", input_type=Int(optional=True), prefix="--maxclustersize", doc=InputDocumentation(doc="maximal size of cluster (default: 50)"))], outputs=[ToolOutput(tag="out_genes_prefix", output_type=Directory(optional=True), selector=InputSelector(input_to_select="in_genes_prefix", type_hint=File()), doc=OutputDocumentation(doc="prefix for GTF output, can include directory (default: value of --genes)")), ToolOutput(tag="out_clusters", output_type=File(optional=True), selector=InputSelector(input_to_select="in_clusters", type_hint=File()), doc=OutputDocumentation(doc="output file with clusters"))], container="quay.io/biocontainers/augustus:3.4.0--pl526h0faeac2_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Clusterandsplitgenes_Pl_V0_1_0().translate("wdl")

