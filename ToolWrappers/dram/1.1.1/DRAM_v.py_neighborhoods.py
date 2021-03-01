from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File, Directory, Boolean, String, Int

Dram_V_Py_Neighborhoods_V0_1_0 = CommandToolBuilder(tool="DRAM_v.py_neighborhoods", base_command=["DRAM-v.py", "neighborhoods"], inputs=[ToolInput(tag="in_input_file", input_type=File(optional=True), prefix="--input_file", doc=InputDocumentation(doc="Annotations path (default: None)")), ToolInput(tag="in_output_dir", input_type=Directory(optional=True), prefix="--output_dir", doc=InputDocumentation(doc="Directory to write gene neighborhoods (default: None)")), ToolInput(tag="in_genes", input_type=Boolean(optional=True), prefix="--genes", doc=InputDocumentation(doc="[GENES [GENES ...]]\nGene names from DRAM to find neighborhoods around\n(default: None)")), ToolInput(tag="in_identifiers", input_type=Boolean(optional=True), prefix="--identifiers", doc=InputDocumentation(doc="[IDENTIFIERS [IDENTIFIERS ...]]\nDatabase identifiers assigned by DRAM to find\nneighborhoods around (default: None)")), ToolInput(tag="in_categories", input_type=String(optional=True), prefix="--categories", doc=InputDocumentation(doc="Distillate categories to build gene neighborhoods\naround. (default: None)")), ToolInput(tag="in_genes_loc", input_type=File(optional=True), prefix="--genes_loc", doc=InputDocumentation(doc="Location of genes.fna/genes.faa file to filter to\nneighborhoods (default: None)")), ToolInput(tag="in_scaffolds_loc", input_type=File(optional=True), prefix="--scaffolds_loc", doc=InputDocumentation(doc="Location of scaffolds.fna file to filter to\nneighborhoods (default: None)")), ToolInput(tag="in_distance_genes", input_type=Int(optional=True), prefix="--distance_genes", doc=InputDocumentation(doc="Number of genes away from center to include in\nneighborhoods (default: None)")), ToolInput(tag="in_distance_bp", input_type=Int(optional=True), prefix="--distance_bp", doc=InputDocumentation(doc="Number of genes away from center to include in\nneighborhoods (default: None)\n"))], outputs=[], container="quay.io/biocontainers/dram:1.1.1--py_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Dram_V_Py_Neighborhoods_V0_1_0().translate("wdl")

