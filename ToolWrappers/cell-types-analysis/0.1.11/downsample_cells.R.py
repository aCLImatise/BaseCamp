from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Directory, File, Int

Downsample_Cells_R_V0_1_0 = CommandToolBuilder(tool="downsample_cells.R", base_command=["downsample_cells.R"], inputs=[ToolInput(tag="in_expression_data", input_type=Directory(optional=True), prefix="--expression-data", doc=InputDocumentation(doc="10xGenomics-type directory holding expression matrix, genes,\nand barcodes")), ToolInput(tag="in_metadata", input_type=File(optional=True), prefix="--metadata", doc=InputDocumentation(doc="Metadata file mapping cells to cell types")), ToolInput(tag="in_exclusions", input_type=File(optional=True), prefix="--exclusions", doc=InputDocumentation(doc="Path to the yaml file with excluded terms for")), ToolInput(tag="in_cell_id_field", input_type=File(optional=True), prefix="--cell-id-field", doc=InputDocumentation(doc="Name of cell id column in metada file")), ToolInput(tag="in_cell_type_field", input_type=File(optional=True), prefix="--cell-type-field", doc=InputDocumentation(doc="Name of cell type column in metada file")), ToolInput(tag="in_array_size_limit", input_type=Int(optional=True), prefix="--array-size-limit", doc=InputDocumentation(doc="Maximum length of R array")), ToolInput(tag="in_output_dir", input_type=Directory(optional=True), prefix="--output-dir", doc=InputDocumentation(doc="Output directory for downsampled expression data")), ToolInput(tag="in_cell_count_threshold", input_type=Int(optional=True), prefix="--cell-count-threshold", doc=InputDocumentation(doc="Threshold number of cells to keep a cell type in the matrix")), ToolInput(tag="in_metadata_upd", input_type=File(optional=True), prefix="--metadata-upd", doc=InputDocumentation(doc="Updated metadata file output path"))], outputs=[ToolOutput(tag="out_output_dir", output_type=Directory(optional=True), selector=InputSelector(input_to_select="in_output_dir", type_hint=File()), doc=OutputDocumentation(doc="Output directory for downsampled expression data")), ToolOutput(tag="out_metadata_upd", output_type=File(optional=True), selector=InputSelector(input_to_select="in_metadata_upd", type_hint=File()), doc=OutputDocumentation(doc="Updated metadata file output path"))], container="quay.io/biocontainers/cell-types-analysis:0.1.11--0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Downsample_Cells_R_V0_1_0().translate("wdl")

