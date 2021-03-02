from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean, File, Int, String

Extract_Long_Sequences_Py_V0_1_0 = CommandToolBuilder(tool="extract_long_sequences.py", base_command=["extract-long-sequences.py"], inputs=[ToolInput(tag="in_info", input_type=Boolean(optional=True), prefix="--info", doc=InputDocumentation(doc="print citation information")), ToolInput(tag="in_output", input_type=File(optional=True), prefix="--output", doc=InputDocumentation(doc="The name of the output sequence file. (default:\n<_io.TextIOWrapper name='<stdout>' mode='w'\nencoding='utf-8'>)")), ToolInput(tag="in_length", input_type=Int(optional=True), prefix="--length", doc=InputDocumentation(doc="The minimum length of the sequence file. (default:\n200)")), ToolInput(tag="in_gzip", input_type=Boolean(optional=True), prefix="--gzip", doc=InputDocumentation(doc="Compress output using gzip (default: False)")), ToolInput(tag="in_bzip", input_type=Boolean(optional=True), prefix="--bzip", doc=InputDocumentation(doc="Compress output using bzip2 (default: False)")), ToolInput(tag="in_input_filenames", input_type=String(), position=0, doc=InputDocumentation(doc="Input FAST[AQ] sequence filename."))], outputs=[ToolOutput(tag="out_output", output_type=File(optional=True), selector=InputSelector(input_to_select="in_output", type_hint=File()), doc=OutputDocumentation(doc="The name of the output sequence file. (default:\n<_io.TextIOWrapper name='<stdout>' mode='w'\nencoding='utf-8'>)"))], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Extract_Long_Sequences_Py_V0_1_0().translate("wdl", allow_empty_container=True)

