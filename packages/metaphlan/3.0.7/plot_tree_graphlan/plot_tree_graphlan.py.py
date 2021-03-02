from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String, Int, Float

Plot_Tree_Graphlan_Py_V0_1_0 = CommandToolBuilder(tool="plot_tree_graphlan.py", base_command=["plot_tree_graphlan.py"], inputs=[ToolInput(tag="in_ifn_tree", input_type=String(optional=True), prefix="--ifn_tree", doc=InputDocumentation(doc="The input tree in newick format.")), ToolInput(tag="in_colorized_metadata", input_type=String(optional=True), prefix="--colorized_metadata", doc=InputDocumentation(doc="The metadata field to colorize. Default 'unset'.")), ToolInput(tag="in_fig_size", input_type=Int(optional=True), prefix="--fig_size", doc=InputDocumentation(doc="The figure size. Default '8'.")), ToolInput(tag="in_legend_marker_size", input_type=Int(optional=True), prefix="--legend_marker_size", doc=InputDocumentation(doc="The legend marker size. Default '20'.")), ToolInput(tag="in_legend_font_size", input_type=Int(optional=True), prefix="--legend_font_size", doc=InputDocumentation(doc="The legend font size. Default '10'.")), ToolInput(tag="in_legend_marker_edge_width", input_type=Float(optional=True), prefix="--legend_marker_edge_width", doc=InputDocumentation(doc="The legend marker edge width. Default '0.2'.")), ToolInput(tag="in_leaf_marker_size", input_type=Int(optional=True), prefix="--leaf_marker_size", doc=InputDocumentation(doc="The legend marker size. Default '20'.")), ToolInput(tag="in_leaf_marker_edge_width", input_type=Float(optional=True), prefix="--leaf_marker_edge_width", doc=InputDocumentation(doc="The legend marker edge width. Default '0.2'.")), ToolInput(tag="in_dpi", input_type=String(optional=True), prefix="--dpi", doc=InputDocumentation(doc="The figure dpi.")), ToolInput(tag="in_figure_extension", input_type=String(optional=True), prefix="--figure_extension", doc=InputDocumentation(doc="The figure extension. Default '.png'.")), ToolInput(tag="in_of_n_prefix", input_type=String(optional=True), prefix="--ofn_prefix", doc=InputDocumentation(doc="The prefix of output files.\n"))], outputs=[], container="quay.io/biocontainers/metaphlan:3.0.7--pyh7b7c402_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Plot_Tree_Graphlan_Py_V0_1_0().translate("wdl")

