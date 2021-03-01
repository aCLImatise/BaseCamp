from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File, String, Int, Boolean

Lefse_Plot_Res_Py_V0_1_0 = CommandToolBuilder(tool="lefse_plot_res.py", base_command=["lefse-plot_res.py"], inputs=[ToolInput(tag="in_feature_font_size", input_type=File(optional=True), prefix="--feature_font_size", doc=InputDocumentation(doc="the file for the output image")), ToolInput(tag="in_format", input_type=File(optional=True), prefix="--format", doc=InputDocumentation(doc="the format for the output file")), ToolInput(tag="in_class_legend_font_size", input_type=String(optional=True), prefix="--class_legend_font_size", doc=InputDocumentation(doc="only for vertical histograms")), ToolInput(tag="in_background_color", input_type=String(optional=True), prefix="--background_color", doc=InputDocumentation(doc="set the color of the background")), ToolInput(tag="in_sub_clades", input_type=Int(optional=True), prefix="--subclades", doc=InputDocumentation(doc="number of label levels to be dislayed (starting from\nthe leaves, -1 means all the levels, 1 is default )")), ToolInput(tag="in_max_feature_len", input_type=Int(optional=True), prefix="--max_feature_len", doc=InputDocumentation(doc="Maximum length of feature strings (def 60)")), ToolInput(tag="in_all_feats", input_type=String(optional=True), prefix="--all_feats", doc=InputDocumentation(doc="Plot only species resolved OTUs (as opposed to all\nlevels)")), ToolInput(tag="in_report_features", input_type=Boolean(optional=True), prefix="--report_features", doc=InputDocumentation(doc="Report important features to STDOUT")), ToolInput(tag="in_input_file", input_type=String(), position=0, doc=InputDocumentation(doc="tab delimited input file")), ToolInput(tag="in_output_file", input_type=String(), position=1, doc=InputDocumentation(doc="the file for the output image"))], outputs=[ToolOutput(tag="out_feature_font_size", output_type=File(optional=True), selector=InputSelector(input_to_select="in_feature_font_size", type_hint=File()), doc=OutputDocumentation(doc="the file for the output image")), ToolOutput(tag="out_format", output_type=File(optional=True), selector=InputSelector(input_to_select="in_format", type_hint=File()), doc=OutputDocumentation(doc="the format for the output file"))], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Lefse_Plot_Res_Py_V0_1_0().translate("wdl", allow_empty_container=True)

