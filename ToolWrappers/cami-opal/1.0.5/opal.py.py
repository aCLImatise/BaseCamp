from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File, Directory, Boolean, String

Opal_Py_V0_1_0 = CommandToolBuilder(tool="opal.py", base_command=["opal.py"], inputs=[ToolInput(tag="in_gold_standard_file", input_type=File(optional=True), prefix="--gold_standard_file", doc=InputDocumentation(doc="Gold standard file")), ToolInput(tag="in_output_dir", input_type=Directory(optional=True), prefix="--output_dir", doc=InputDocumentation(doc="Directory to write the results to")), ToolInput(tag="in_no_normalization", input_type=Boolean(optional=True), prefix="--no_normalization", doc=InputDocumentation(doc="Do not normalize samples")), ToolInput(tag="in_plot_abundances", input_type=Boolean(optional=True), prefix="--plot_abundances", doc=InputDocumentation(doc="Plot abundances in the gold standard (can take some\nminutes)")), ToolInput(tag="in_labels", input_type=String(optional=True), prefix="--labels", doc=InputDocumentation(doc="Comma-separated profiles names")), ToolInput(tag="in_time", input_type=String(optional=True), prefix="--time", doc=InputDocumentation(doc="Comma-separated runtimes in hours")), ToolInput(tag="in_memory", input_type=String(optional=True), prefix="--memory", doc=InputDocumentation(doc="Comma-separated memory usages in gigabytes")), ToolInput(tag="in_desc", input_type=String(optional=True), prefix="--desc", doc=InputDocumentation(doc="Description for HTML page")), ToolInput(tag="in_ranks", input_type=String(optional=True), prefix="--ranks", doc=InputDocumentation(doc="Highest and lowest taxonomic ranks to consider in\nperformance rankings, comma-separated. Valid ranks:\nsuperkingdom, phylum, class, order, family, genus,\nspecies, strain (default:superkingdom,species)")), ToolInput(tag="in_silent", input_type=Boolean(optional=True), prefix="--silent", doc=InputDocumentation(doc="Silent mode")), ToolInput(tag="in_profiles_files", input_type=String(), position=0, doc=InputDocumentation(doc="Files of profiles"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Opal_Py_V0_1_0().translate("wdl", allow_empty_container=True)

