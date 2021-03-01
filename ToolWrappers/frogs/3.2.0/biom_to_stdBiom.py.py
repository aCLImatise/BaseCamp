from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File, String, Boolean

Biom_To_Stdbiom_Py_V0_1_0 = CommandToolBuilder(tool="biom_to_stdBiom.py", base_command=["biom_to_stdBiom.py"], inputs=[ToolInput(tag="in_input_biom", input_type=File(optional=True), prefix="--input-biom", doc=InputDocumentation(doc="The abundance file (format: BIOM).")), ToolInput(tag="in_output_biom", input_type=File(optional=True), prefix="--output-biom", doc=InputDocumentation(doc="The fully compatible abundance file (format: BIOM).\n[Default: abundance.std.biom]")), ToolInput(tag="in_output_metadata", input_type=String(optional=True), prefix="--output-metadata", doc=InputDocumentation(doc="The blast affiliations informations (format: TSV).\n[Default: blast_informations.std.tsv]")), ToolInput(tag="in_log_file", input_type=File(optional=True), prefix="--log-file", doc=InputDocumentation(doc="This output file will contain several information on\nexecuted commands.\n")), ToolInput(tag="in_v", input_type=Boolean(optional=True), prefix="-v", doc=InputDocumentation(doc=""))], outputs=[ToolOutput(tag="out_log_file", output_type=File(optional=True), selector=InputSelector(input_to_select="in_log_file", type_hint=File()), doc=OutputDocumentation(doc="This output file will contain several information on\nexecuted commands.\n"))], container="quay.io/biocontainers/frogs:3.2.0--py37_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Biom_To_Stdbiom_Py_V0_1_0().translate("wdl")

