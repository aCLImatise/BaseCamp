from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File, Boolean

Tsv_To_Biom_Py_V0_1_0 = CommandToolBuilder(tool="tsv_to_biom.py", base_command=["tsv_to_biom.py"], inputs=[ToolInput(tag="in_input_tsv", input_type=File(optional=True), prefix="--input-tsv", doc=InputDocumentation(doc="This input file contain the abundance and metadata\n(format: TSV).")), ToolInput(tag="in_input_multi_affi", input_type=File(optional=True), prefix="--input-multi-affi", doc=InputDocumentation(doc="This input file will contain information about\nmultiple alignements (format: TSV). Use this option\nonly if your affiliation has been produced by FROGS.")), ToolInput(tag="in_output_biom", input_type=File(optional=True), prefix="--output-biom", doc=InputDocumentation(doc="The output abundance file (format: BIOM).")), ToolInput(tag="in_output_fast_a", input_type=File(optional=True), prefix="--output-fasta", doc=InputDocumentation(doc="The output sequences file (format: FASTA). If\nsequences exist in your input TSV with tag\nseed_sequence.")), ToolInput(tag="in_log_file", input_type=File(optional=True), prefix="--log-file", doc=InputDocumentation(doc="This output file will contain several informations on\nexecuted commands.\n")), ToolInput(tag="in_v", input_type=Boolean(optional=True), prefix="-v", doc=InputDocumentation(doc=""))], outputs=[ToolOutput(tag="out_output_biom", output_type=File(optional=True), selector=InputSelector(input_to_select="in_output_biom", type_hint=File()), doc=OutputDocumentation(doc="The output abundance file (format: BIOM).")), ToolOutput(tag="out_log_file", output_type=File(optional=True), selector=InputSelector(input_to_select="in_log_file", type_hint=File()), doc=OutputDocumentation(doc="This output file will contain several informations on\nexecuted commands.\n"))], container="quay.io/biocontainers/frogs:3.2.2--py37_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Tsv_To_Biom_Py_V0_1_0().translate("wdl")

