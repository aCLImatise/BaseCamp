from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String, Directory, Boolean, Float, Int

Gseapy_Replot_V0_1_0 = CommandToolBuilder(tool="gseapy_replot", base_command=["gseapy", "replot"], inputs=[ToolInput(tag="in_in_dir", input_type=String(optional=True), prefix="--indir", doc=InputDocumentation(doc="The GSEA desktop results directroy that you want to\nreproduce the figure")), ToolInput(tag="in_outdir", input_type=Directory(optional=True), prefix="--outdir", doc=InputDocumentation(doc="The GSEApy output directory. Default: the current\nworking directory")), ToolInput(tag="in_format", input_type=Boolean(optional=True), prefix="--format", doc=InputDocumentation(doc="File extensions supported by Matplotlib active\nbackend, choose from {'pdf', 'png', 'jpeg','ps',\n'eps','svg'}. Default: 'pdf'.")), ToolInput(tag="in_fs", input_type=Float(optional=True), prefix="--fs", doc=InputDocumentation(doc="height, --figsize width height\nThe figsize keyword argument need two parameters to\ndefine. Default: (6.5, 6)")), ToolInput(tag="in_graph", input_type=Int(optional=True), prefix="--graph", doc=InputDocumentation(doc="Numbers of top graphs produced. Default: 20")), ToolInput(tag="in_no_plot", input_type=Boolean(optional=True), prefix="--no-plot", doc=InputDocumentation(doc="Speed up computing by suppressing the plot output.This\nis useful only if data are interested. Default: False.")), ToolInput(tag="in_verbose", input_type=Boolean(optional=True), prefix="--verbose", doc=InputDocumentation(doc="Increase output verbosity, print out progress of your")), ToolInput(tag="in_job", input_type=String(), position=0, doc=InputDocumentation(doc="-w float, --weight float"))], outputs=[ToolOutput(tag="out_outdir", output_type=Directory(optional=True), selector=InputSelector(input_to_select="in_outdir", type_hint=File()), doc=OutputDocumentation(doc="The GSEApy output directory. Default: the current\nworking directory"))], container="quay.io/biocontainers/gseapy:0.10.3--py_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Gseapy_Replot_V0_1_0().translate("wdl")

