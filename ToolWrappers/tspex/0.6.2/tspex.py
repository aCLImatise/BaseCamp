from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean, Int, String

Tspex_V0_1_0 = CommandToolBuilder(tool="tspex", base_command=["tspex"], inputs=[ToolInput(tag="in_log", input_type=Boolean(optional=True), prefix="--log", doc=InputDocumentation(doc="Log-transform expression values. (default: False)")), ToolInput(tag="in_disable_transformation", input_type=Boolean(optional=True), prefix="--disable_transformation", doc=InputDocumentation(doc="By default, tissue-specificity values are transformed\nso that they range from 0 (perfectly ubiquitous) to 1\n(perfectly tissue-specific). If this parameter is\nused, transformation will be disabled and each metric\nwill have have a diferent range of possible values.\n(default: False)")), ToolInput(tag="in_threshold", input_type=Int(optional=True), prefix="--threshold", doc=InputDocumentation(doc="Threshold to be used with the 'counts' metric. If\nanother method is chosen, this parameter will be\nignored. (default: 0)\n")), ToolInput(tag="in_input_file", input_type=String(), position=0, doc=InputDocumentation(doc="Expression matrix file in the TSV, CSV or Excel")), ToolInput(tag="in_formats_dot", input_type=String(), position=1, doc=InputDocumentation(doc="output_file           Output TSV file containing tissue-specificity values.")), ToolInput(tag="in_method", input_type=String(), position=2, doc=InputDocumentation(doc="Tissue-specificity metric. Allowed values are:\n'counts', 'tau', 'gini', 'simpson',\n'shannon_specificity', 'roku_specificity', 'tsi',\n'zscore', 'spm', 'spm_dpm', 'js_specificity',\n'js_specificity_dpm'."))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Tspex_V0_1_0().translate("wdl", allow_empty_container=True)

