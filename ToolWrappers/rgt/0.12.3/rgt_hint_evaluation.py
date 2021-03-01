from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File, Int, Boolean

Rgt_Hint_Evaluation_V0_1_0 = CommandToolBuilder(tool="rgt_hint_evaluation", base_command=["rgt-hint", "evaluation"], inputs=[ToolInput(tag="in_tfbs_file", input_type=File(optional=True), prefix="--tfbs-file", doc=InputDocumentation(doc="A bed file containing all motif-predicted binding\nsites (MPBSs).The values in the bed SCORE field will\nbe used to rank the MPBSs.The extension must be\n(.bed).")), ToolInput(tag="in_footprint_file", input_type=File(optional=True), prefix="--footprint-file", doc=InputDocumentation(doc=",FILE2,FILE3,FILE4...\nThe bed files containing the footprint predictions.The\nextension must be (.bed).")), ToolInput(tag="in_footprint_name", input_type=Int(optional=True), prefix="--footprint-name", doc=InputDocumentation(doc=",NAME2,NAME3,NAME4...\nThe name used to distinguish different footprint\nfiles.The number of methods name must be consistent\nwith that of footprint files")), ToolInput(tag="in_footprint_type", input_type=Int(optional=True), prefix="--footprint-type", doc=InputDocumentation(doc=",TYPE2,TYPE3,TYPE4...\nThe methods type used to predicted the footprint.Must\nbe SC (site centric) or SEG (segmentation approach)")), ToolInput(tag="in_output_location", input_type=File(optional=True), prefix="--output-location", doc=InputDocumentation(doc="If set, HINT will print the receiver operating\ncharacteristic curve.")), ToolInput(tag="in_print_pr_curve", input_type=Boolean(optional=True), prefix="--print-pr-curve", doc=InputDocumentation(doc="If set, HINT will print the precision recall curve."))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Rgt_Hint_Evaluation_V0_1_0().translate("wdl", allow_empty_container=True)

