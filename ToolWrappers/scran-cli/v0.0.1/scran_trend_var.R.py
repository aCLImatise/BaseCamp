from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File, Int, String

Scran_Trend_Var_R_V0_1_0 = CommandToolBuilder(tool="scran_trend_var.R", base_command=["scran-trend-var.R"], inputs=[ToolInput(tag="in_input_sce_object", input_type=File(optional=True), prefix="--input-sce-object", doc=InputDocumentation(doc="Path to the input SCE object in rds format.")), ToolInput(tag="in_min_mean", input_type=Int(optional=True), prefix="--min-mean", doc=InputDocumentation(doc="A numeric scalar specifying the minimum mean to use for trend fitting.")), ToolInput(tag="in_method", input_type=String(optional=True), prefix="--method", doc=InputDocumentation(doc="A string specifying the algorithm to use for smooth trend fitting.")), ToolInput(tag="in_parametric", input_type=String(optional=True), prefix="--parametric", doc=InputDocumentation(doc="A logical scalar indicating whether a parametric fit should be attempted.")), ToolInput(tag="in_assay_type", input_type=Int(optional=True), prefix="--assay-type", doc=InputDocumentation(doc="String or integer scalar specifying the assay containing the log-expression values. Default: 'logcounts'")), ToolInput(tag="in_use_spikes", input_type=String(optional=True), prefix="--use-spikes", doc=InputDocumentation(doc="If FALSE only the rows not labelled as spike-in transcripts will be used. If TRUE, nly rows labelled as spike-ins with isSpike(x) will be used.")), ToolInput(tag="in_output_trend_var", input_type=File(optional=True), prefix="--output-trend-var", doc=InputDocumentation(doc="Path to the RDS object with named list containing: mean, var, resid.df, block, design, trend, df2."))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Scran_Trend_Var_R_V0_1_0().translate("wdl", allow_empty_container=True)

