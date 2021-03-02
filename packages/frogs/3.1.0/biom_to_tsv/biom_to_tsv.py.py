from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File, Boolean

Biom_To_Tsv_Py_V0_1_0 = CommandToolBuilder(tool="biom_to_tsv.py", base_command=["biom_to_tsv.py"], inputs=[ToolInput(tag="in_input_biom", input_type=File(optional=True), prefix="--input-biom", doc=InputDocumentation(doc="The abundance file (format: BIOM).")), ToolInput(tag="in_input_fast_a", input_type=File(optional=True), prefix="--input-fasta", doc=InputDocumentation(doc="The sequences file (format: fasta). If you use this\noption the sequences will be add in TSV.")), ToolInput(tag="in_output_tsv", input_type=File(optional=True), prefix="--output-tsv", doc=InputDocumentation(doc="This output file will contain the abundance and\nmetadata (format: TSV). [Default: abundance.tsv]")), ToolInput(tag="in_output_multi_affi", input_type=File(optional=True), prefix="--output-multi-affi", doc=InputDocumentation(doc="This output file will contain information about\nmultiple alignements (format: TSV). Use this option\nonly if your affiliation has been produced by FROGS.")), ToolInput(tag="in_log_file", input_type=File(optional=True), prefix="--log-file", doc=InputDocumentation(doc="This output file will contain several information on\nexecuted commands.\n")), ToolInput(tag="in_v", input_type=Boolean(optional=True), prefix="-v", doc=InputDocumentation(doc=""))], outputs=[ToolOutput(tag="out_output_tsv", output_type=File(optional=True), selector=InputSelector(input_to_select="in_output_tsv", type_hint=File()), doc=OutputDocumentation(doc="This output file will contain the abundance and\nmetadata (format: TSV). [Default: abundance.tsv]")), ToolOutput(tag="out_output_multi_affi", output_type=File(optional=True), selector=InputSelector(input_to_select="in_output_multi_affi", type_hint=File()), doc=OutputDocumentation(doc="This output file will contain information about\nmultiple alignements (format: TSV). Use this option\nonly if your affiliation has been produced by FROGS.")), ToolOutput(tag="out_log_file", output_type=File(optional=True), selector=InputSelector(input_to_select="in_log_file", type_hint=File()), doc=OutputDocumentation(doc="This output file will contain several information on\nexecuted commands.\n"))], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Biom_To_Tsv_Py_V0_1_0().translate("wdl", allow_empty_container=True)

