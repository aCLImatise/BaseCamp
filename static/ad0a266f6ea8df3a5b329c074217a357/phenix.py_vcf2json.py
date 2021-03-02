from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File, Boolean

Phenix_Py_Vcf2Json_V0_1_0 = CommandToolBuilder(tool="phenix.py_vcf2json", base_command=["phenix.py", "vcf2json"], inputs=[ToolInput(tag="in_input", input_type=File(optional=True), prefix="--input", doc=InputDocumentation(doc="path to a VCF file")), ToolInput(tag="in_output_file_prefix", input_type=File(optional=True), prefix="--output_file_prefix", doc=InputDocumentation(doc="Path to the json output file (without file extension).\nDefault: sample_name")), ToolInput(tag="in_no_zip", input_type=Boolean(optional=True), prefix="--nozip", doc=InputDocumentation(doc="Do not gzip json when writing file. (default: Yes,\ngzip it.)")), ToolInput(tag="in_vcf_is_filtered", input_type=Boolean(optional=True), prefix="--vcf_is_filtered", doc=InputDocumentation(doc="Required: Confirm that the input vcf is filtered. It\nis stronglyrecommended to filter the file with Phenix\nusing the sameparameters that are used throughout the\ndatabase this jason file is meant for.")), ToolInput(tag="in_summary_info", input_type=Boolean(optional=True), prefix="--summary_info", doc=InputDocumentation(doc="Print summary of the json string"))], outputs=[ToolOutput(tag="out_output_file_prefix", output_type=File(optional=True), selector=InputSelector(input_to_select="in_output_file_prefix", type_hint=File()), doc=OutputDocumentation(doc="Path to the json output file (without file extension).\nDefault: sample_name"))], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Phenix_Py_Vcf2Json_V0_1_0().translate("wdl", allow_empty_container=True)

