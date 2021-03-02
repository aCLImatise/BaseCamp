from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File, String, Boolean, Int

Scelvis_Convert_V0_1_0 = CommandToolBuilder(tool="scelvis_convert", base_command=["scelvis", "convert"], inputs=[ToolInput(tag="in_input_dir", input_type=File(optional=True), prefix="--input-dir", doc=InputDocumentation(doc="path to input/pipeline output directory")), ToolInput(tag="in_about_md", input_type=File(optional=True), prefix="--about-md", doc=InputDocumentation(doc="Path to about.md file to embed in the resulting .h5ad\nfile")), ToolInput(tag="in_markers", input_type=File(optional=True), prefix="--markers", doc=InputDocumentation(doc="Path to markers.tsv file to embed in the resulting\n.h5ad file")), ToolInput(tag="in_output", input_type=File(optional=True), prefix="--output", doc=InputDocumentation(doc="Path to the .h5ad file to write to")), ToolInput(tag="in_format", input_type=String(optional=True), prefix="--format", doc=InputDocumentation(doc="input format")), ToolInput(tag="in_use_raw", input_type=Boolean(optional=True), prefix="--use-raw", doc=InputDocumentation(doc="Do not normalize expression values (use raw counts)")), ToolInput(tag="in_split_species", input_type=Boolean(optional=True), prefix="--split-species", doc=InputDocumentation(doc="Split species")), ToolInput(tag="in_split_samples", input_type=Boolean(optional=True), prefix="--split-samples", doc=InputDocumentation(doc="split samples according to summary.json file produced\nby cellranger aggr")), ToolInput(tag="in_n_markers", input_type=Int(optional=True), prefix="--nmarkers", doc=InputDocumentation(doc="Save top n markers per cluster [10]")), ToolInput(tag="in_verbose", input_type=Boolean(optional=True), prefix="--verbose", doc=InputDocumentation(doc="Enable verbose output"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Scelvis_Convert_V0_1_0().translate("wdl", allow_empty_container=True)

