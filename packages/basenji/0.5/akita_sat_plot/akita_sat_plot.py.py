from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Int, Directory, Boolean, String, File

Akita_Sat_Plot_Py_V0_1_0 = CommandToolBuilder(tool="akita_sat_plot.py", base_command=["akita_sat_plot.py"], inputs=[ToolInput(tag="in_figure_width", input_type=Int(optional=True), prefix="-f", doc=InputDocumentation(doc="Figure width [Default: 20]")), ToolInput(tag="in_length_centered_sequence", input_type=Int(optional=True), prefix="-l", doc=InputDocumentation(doc="Length of centered sequence to mutate [Default: 300]")), ToolInput(tag="in_minimum_heatmap_limit", input_type=Int(optional=True), prefix="-m", doc=InputDocumentation(doc="Minimum heatmap limit [Default: 0.1]")), ToolInput(tag="in_output_directory", input_type=Directory(optional=True), prefix="-o", doc=InputDocumentation(doc="Output directory [Default: sat_plot]")), ToolInput(tag="in_png", input_type=Boolean(optional=True), prefix="--png", doc=InputDocumentation(doc="Write PNG as opposed to PDF [Default: False]")), ToolInput(tag="in_random_number_generator", input_type=Int(optional=True), prefix="-r", doc=InputDocumentation(doc="Random number generator seed [Default: 1]")), ToolInput(tag="in_sample_n_sequences", input_type=String(optional=True), prefix="-s", doc=InputDocumentation(doc="Sample N sequences from the set [Default:none]")), ToolInput(tag="in_stat", input_type=String(optional=True), prefix="--stat", doc=InputDocumentation(doc="SAD stat to display [Default: sqdiff]")), ToolInput(tag="in_file_specifying_indexes", input_type=File(optional=True), prefix="-t", doc=InputDocumentation(doc="File specifying target indexes and labels in table format")), ToolInput(tag="in_scores_file", input_type=String(), position=0, doc=InputDocumentation(doc=""))], outputs=[ToolOutput(tag="out_output_directory", output_type=Directory(optional=True), selector=InputSelector(input_to_select="in_output_directory", type_hint=File()), doc=OutputDocumentation(doc="Output directory [Default: sat_plot]"))], container="quay.io/biocontainers/basenji:0.5--py_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Akita_Sat_Plot_Py_V0_1_0().translate("wdl")

