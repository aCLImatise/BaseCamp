from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String, File, Float

Sv_Classifier_Py_V0_1_0 = CommandToolBuilder(tool="sv_classifier.py", base_command=["sv_classifier.py"], inputs=[ToolInput(tag="in_input", input_type=String(optional=True), prefix="--input", doc=InputDocumentation(doc="VCF input [stdin]")), ToolInput(tag="in_gender", input_type=File(optional=True), prefix="--gender", doc=InputDocumentation(doc="tab delimited file of sample genders (male=1, female=2)\nex: SAMPLE_A    2")), ToolInput(tag="in_exclude", input_type=File(optional=True), prefix="--exclude", doc=InputDocumentation(doc="list of samples to exclude from classification algorithms")), ToolInput(tag="in_annotation", input_type=File(optional=True), prefix="--annotation", doc=InputDocumentation(doc="BED file of annotated elements")), ToolInput(tag="in_fraction", input_type=Float(optional=True), prefix="--fraction", doc=InputDocumentation(doc="fraction of reciprocal overlap to apply annotation to variant [0.9]")), ToolInput(tag="in_slope_threshold", input_type=Float(optional=True), prefix="--slope_threshold", doc=InputDocumentation(doc="minimum slope absolute value of regression line to classify as DEL or DUP[1.0]")), ToolInput(tag="in_r_squared_threshold", input_type=Float(optional=True), prefix="--rsquared_threshold", doc=InputDocumentation(doc="minimum R^2 correlation value of regression line to classify as DEL or DUP [0.2]\n"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Sv_Classifier_Py_V0_1_0().translate("wdl", allow_empty_container=True)

