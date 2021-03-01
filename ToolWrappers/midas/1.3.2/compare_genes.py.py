from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File, Int, String, Float

Compare_Genes_Py_V0_1_0 = CommandToolBuilder(tool="compare_genes.py", base_command=["compare_genes.py"], inputs=[ToolInput(tag="in_out", input_type=File(optional=True), prefix="--out", doc=InputDocumentation(doc="Path to output file")), ToolInput(tag="in_max_genes", input_type=Int(optional=True), prefix="--max_genes", doc=InputDocumentation(doc="Maximum number of genes to use. Useful for quick tests (use all)")), ToolInput(tag="in_max_samples", input_type=Int(optional=True), prefix="--max_samples", doc=InputDocumentation(doc="Maximum number of samples to use. Useful for quick tests (use all)")), ToolInput(tag="in_distance", input_type=String(optional=True), prefix="--distance", doc=InputDocumentation(doc="Metric to use for computing distances (jaccard)")), ToolInput(tag="in_d_type", input_type=String(optional=True), prefix="--dtype", doc=InputDocumentation(doc="Data type to use for comparing genes (presabs)")), ToolInput(tag="in_cut_off", input_type=Float(optional=True), prefix="--cutoff", doc=InputDocumentation(doc="Cutoff to use for determining presence absence (0.35)")), ToolInput(tag="in_path", input_type=File(), position=0, doc=InputDocumentation(doc="Path to output from `merge_midas.py genes` for one species\ndirectory should be named according to a species_id and contains files 'genes_*.txt')"))], outputs=[ToolOutput(tag="out_out", output_type=File(optional=True), selector=InputSelector(input_to_select="in_out", type_hint=File()), doc=OutputDocumentation(doc="Path to output file"))], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Compare_Genes_Py_V0_1_0().translate("wdl", allow_empty_container=True)

