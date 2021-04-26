from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean, File, String, Directory, Int

Cbhub_V0_1_0 = CommandToolBuilder(tool="cbHub", base_command=["cbHub"], inputs=[ToolInput(tag="in_in_it", input_type=Boolean(optional=True), prefix="--init", doc=InputDocumentation(doc="write a sample hub.conf to the current directory")), ToolInput(tag="in_in_conf", input_type=File(optional=True), prefix="--inConf", doc=InputDocumentation(doc="a hub.conf input file to read all options from.\n(settings can also be specified via cellbrowser.conf\nin the current directory.) default hub.conf")), ToolInput(tag="in_meta_fname", input_type=String(optional=True), prefix="--metaFname", doc=InputDocumentation(doc="a csv or tsv matrix, one row per cell")), ToolInput(tag="in_expr_matrix", input_type=String(optional=True), prefix="--exprMatrix", doc=InputDocumentation(doc="exprMatrix is a tsv or csv expression matrix, one line\nper cell")), ToolInput(tag="in_cluster_field", input_type=String(optional=True), prefix="--clusterField", doc=InputDocumentation(doc="field in expr matrix that contains the cluster name")), ToolInput(tag="in_outdir", input_type=Directory(optional=True), prefix="--outDir", doc=InputDocumentation(doc="the output directory for the hub, default is none")), ToolInput(tag="in_stat", input_type=String(optional=True), prefix="--stat", doc=InputDocumentation(doc="how to summarize data values of a cluster, one of:\nmedian, mean, percentile, nonzero. default is median")), ToolInput(tag="in_perc", input_type=Int(optional=True), prefix="--perc", doc=InputDocumentation(doc="if stat is 'percentile', which percentile to use. a\nnumber 0-100. default is 90")), ToolInput(tag="in_debug", input_type=Boolean(optional=True), prefix="--debug", doc=InputDocumentation(doc="show debug messages")), ToolInput(tag="in_skip_bar_chart", input_type=Boolean(optional=True), prefix="--skipBarchart", doc=InputDocumentation(doc="do not create the bar chart graph"))], outputs=[ToolOutput(tag="out_outdir", output_type=Directory(optional=True), selector=InputSelector(input_to_select="in_outdir", type_hint=File()), doc=OutputDocumentation(doc="the output directory for the hub, default is none"))], container="quay.io/biocontainers/ucsc-cell-browser:1.0.0--pyhdfd78af_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Cbhub_V0_1_0().translate("wdl")

