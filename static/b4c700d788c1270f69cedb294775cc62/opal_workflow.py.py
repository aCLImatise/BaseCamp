from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Directory, File, String, Boolean

Opal_Workflow_Py_V0_1_0 = CommandToolBuilder(tool="opal_workflow.py", base_command=["opal_workflow.py"], inputs=[ToolInput(tag="in_input_dir", input_type=Directory(optional=True), prefix="--input_dir", doc=InputDocumentation(doc="Input directory containing gzipped FASTQ files")), ToolInput(tag="in_output_dir", input_type=Directory(optional=True), prefix="--output_dir", doc=InputDocumentation(doc="Output directory")), ToolInput(tag="in_gold_standard_file", input_type=File(optional=True), prefix="--gold_standard_file", doc=InputDocumentation(doc="Gold standard file")), ToolInput(tag="in_yaml", input_type=File(optional=True), prefix="--yaml", doc=InputDocumentation(doc="Bioboxes YAML file (default: INPUT_DIR/biobox.yaml)")), ToolInput(tag="in_volume", input_type=String(optional=True), prefix="--volume", doc=InputDocumentation(doc="Docker volume")), ToolInput(tag="in_no_normalization", input_type=Boolean(optional=True), prefix="--no_normalization", doc=InputDocumentation(doc="Do not normalize samples")), ToolInput(tag="in_plot_abundances", input_type=Boolean(optional=True), prefix="--plot_abundances", doc=InputDocumentation(doc="Plot abundances in the gold standard")), ToolInput(tag="in_labels", input_type=String(optional=True), prefix="--labels", doc=InputDocumentation(doc="Comma-separated names of profilers to be shown in OPAL")), ToolInput(tag="in_desc", input_type=String(optional=True), prefix="--desc", doc=InputDocumentation(doc="Description for HTML page")), ToolInput(tag="in_images", input_type=String(), position=0, doc=InputDocumentation(doc="Docker images (bioboxes) of profilers"))], outputs=[ToolOutput(tag="out_output_dir", output_type=Directory(optional=True), selector=InputSelector(input_to_select="in_output_dir", type_hint=File()), doc=OutputDocumentation(doc="Output directory"))], container="quay.io/biocontainers/cami-opal:1.0.9--py_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Opal_Workflow_Py_V0_1_0().translate("wdl")

