from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Directory, String, File, Boolean, Int

Metachip_Get_Scg_Tree_V0_1_0 = CommandToolBuilder(tool="MetaCHIP_get_SCG_tree", base_command=["MetaCHIP", "get_SCG_tree"], inputs=[ToolInput(tag="in_input_genome_folder", input_type=Directory(optional=True), prefix="-i", doc=InputDocumentation(doc="input genome folder")), ToolInput(tag="in_output_prefix", input_type=String(optional=True), prefix="-p", doc=InputDocumentation(doc="output prefix")), ToolInput(tag="in_file_extension", input_type=File(optional=True), prefix="-x", doc=InputDocumentation(doc="file extension")), ToolInput(tag="in_non_meta", input_type=Boolean(optional=True), prefix="-nonmeta", doc=InputDocumentation(doc="annotate Non-metagenome-assembled genomes (Non-MAGs)")), ToolInput(tag="in_number_threads_default", input_type=Int(optional=True), prefix="-t", doc=InputDocumentation(doc="number of threads, default: 1"))], outputs=[], container="quay.io/biocontainers/metachip:1.10.3--pyh3252c3a_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Metachip_Get_Scg_Tree_V0_1_0().translate("wdl")

