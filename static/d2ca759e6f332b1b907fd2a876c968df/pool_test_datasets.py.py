from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean, File, String, Directory

Pool_Test_Datasets_Py_V0_1_0 = CommandToolBuilder(tool="pool_test_datasets.py", base_command=["pool_test_datasets.py"], inputs=[ToolInput(tag="in_verbose", input_type=Boolean(optional=True), prefix="--verbose", doc=InputDocumentation(doc="Print information during execution -- useful for\ndebugging [default: False]")), ToolInput(tag="in_field_order", input_type=File(optional=True), prefix="--field_order", doc=InputDocumentation(doc="pass comma-separated categories, in the order they\nappear in file names.   Categories are 'file_type','pr\nediction_method','weighting_method','holdout_method'\n(randomization vs. holdout),'distance',and 'organism'.\nExample:  '-f file_type,test_method,asr_method\nspecifies that files will be in the form:\npredict_traits--distance_exclusion--wagner.  Any\nunspecified values are set to 'not_specified'.\n[default: file_type,prediction_method,weighting_method\n,holdout_method,distance,organism]")), ToolInput(tag="in_pool_by", input_type=String(optional=True), prefix="--pool_by", doc=InputDocumentation(doc="pass comma-separated categories to pool results by\nthose metadata categories. Valid categories are:\nholdout_method,\nprediction_method,weighting_method,distance and\norganism. For example, pass 'distance' to output\nresults pooled by holdout distance in addition to\nholdout method and prediction method  [default: False]")), ToolInput(tag="in_trait_table_dir", input_type=Directory(optional=True), prefix="--trait_table_dir", doc=InputDocumentation(doc="the input trait table directory (files in biom format)\n[REQUIRED]")), ToolInput(tag="in_exp_trait_table_dir", input_type=Directory(optional=True), prefix="--exp_trait_table_dir", doc=InputDocumentation(doc="the input expected trait table directory (files in\nbiom format) [REQUIRED]")), ToolInput(tag="in_output_dir", input_type=Directory(optional=True), prefix="--output_dir", doc=InputDocumentation(doc="the output directory [REQUIRED]\n"))], outputs=[ToolOutput(tag="out_output_dir", output_type=Directory(optional=True), selector=InputSelector(input_to_select="in_output_dir", type_hint=File()), doc=OutputDocumentation(doc="the output directory [REQUIRED]\n"))], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Pool_Test_Datasets_Py_V0_1_0().translate("wdl", allow_empty_container=True)

