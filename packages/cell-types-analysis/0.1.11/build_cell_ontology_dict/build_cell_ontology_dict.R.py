from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File, Boolean, String

Build_Cell_Ontology_Dict_R_V0_1_0 = CommandToolBuilder(tool="build_cell_ontology_dict.R", base_command=["build_cell_ontology_dict.R"], inputs=[ToolInput(tag="in_input_dir", input_type=File(optional=True), prefix="--input-dir", doc=InputDocumentation(doc="Path to the directory with condensed SDRF files")), ToolInput(tag="in_condensed_sd_rf", input_type=Boolean(optional=True), prefix="--condensed-sdrf", doc=InputDocumentation(doc="Boolean: is the provided SDRF file in a condensed form?\nDefault: TRUE")), ToolInput(tag="in_barcode_col_name", input_type=String(optional=True), prefix="--barcode-col-name", doc=InputDocumentation(doc="Name of the barcode column in SDRF files (must be identical\nacross all files)")), ToolInput(tag="in_cell_label_col_name", input_type=String(optional=True), prefix="--cell-label-col-name", doc=InputDocumentation(doc="Name of the cell label column in SDRF files\n(must be identical across all files)")), ToolInput(tag="in_cell_ontology_col_name", input_type=String(optional=True), prefix="--cell-ontology-col-name", doc=InputDocumentation(doc="Name of the cell ontology terms column in SDRF files\n(must be identical across all files)")), ToolInput(tag="in_output_dict_path", input_type=File(optional=True), prefix="--output-dict-path", doc=InputDocumentation(doc="Output path for serialised object containing the dictionary")), ToolInput(tag="in_output_text_path", input_type=File(optional=True), prefix="--output-text-path", doc=InputDocumentation(doc="Output path for txt version of label - term mapping"))], outputs=[ToolOutput(tag="out_output_dict_path", output_type=File(optional=True), selector=InputSelector(input_to_select="in_output_dict_path", type_hint=File()), doc=OutputDocumentation(doc="Output path for serialised object containing the dictionary")), ToolOutput(tag="out_output_text_path", output_type=File(optional=True), selector=InputSelector(input_to_select="in_output_text_path", type_hint=File()), doc=OutputDocumentation(doc="Output path for txt version of label - term mapping"))], container="quay.io/biocontainers/cell-types-analysis:0.1.11--0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Build_Cell_Ontology_Dict_R_V0_1_0().translate("wdl")

