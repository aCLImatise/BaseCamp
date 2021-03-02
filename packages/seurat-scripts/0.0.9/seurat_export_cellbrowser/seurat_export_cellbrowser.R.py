from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File, String, Directory

Seurat_Export_Cellbrowser_R_V0_1_0 = CommandToolBuilder(tool="seurat_export_cellbrowser.R", base_command=["seurat-export-cellbrowser.R"], inputs=[ToolInput(tag="in_input_object_file", input_type=File(optional=True), prefix="--input-object-file", doc=InputDocumentation(doc="File name in which a serialized R matrix object may be found.")), ToolInput(tag="in_input_format", input_type=String(optional=True), prefix="--input-format", doc=InputDocumentation(doc="Either loom, seurat, anndata or singlecellexperiment for the input format to read.")), ToolInput(tag="in_output_directory", input_type=Directory(optional=True), prefix="--output-directory", doc=InputDocumentation(doc="File name in which to store serialized R object of type 'Seurat'.'")), ToolInput(tag="in_study_name", input_type=String(optional=True), prefix="--study-name", doc=InputDocumentation(doc="Study name to be displayed in CellBrowser")), ToolInput(tag="in_markers_file", input_type=File(optional=True), prefix="--markers-file", doc=InputDocumentation(doc="Path to markers file computed by Seurat"))], outputs=[ToolOutput(tag="out_output_directory", output_type=Directory(optional=True), selector=InputSelector(input_to_select="in_output_directory", type_hint=File()), doc=OutputDocumentation(doc="File name in which to store serialized R object of type 'Seurat'.'"))], container="quay.io/biocontainers/seurat-scripts:0.0.9--0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Seurat_Export_Cellbrowser_R_V0_1_0().translate("wdl")

