from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File, Int, Boolean

Ptpredict_V0_1_0 = CommandToolBuilder(tool="PTPredict", base_command=["PTPredict"], inputs=[ToolInput(tag="in_in", input_type=File(optional=True), prefix="-in", doc=InputDocumentation(doc="*                    Input file  (valid formats: 'idXML')")), ToolInput(tag="in_in_oligo_params", input_type=File(optional=True), prefix="-in_oligo_params", doc=InputDocumentation(doc="Input file with additional model parameters when using the OLIGO kernel (valid formats: 'paramXML')")), ToolInput(tag="in_in_oligo_train_set", input_type=File(optional=True), prefix="-in_oligo_trainset", doc=InputDocumentation(doc="Input file with the used training dataset when using the OLIGO kernel (valid formats: 'txt')")), ToolInput(tag="in_out", input_type=File(optional=True), prefix="-out", doc=InputDocumentation(doc="*                   Output file\n(valid formats: 'idXML')")), ToolInput(tag="in_svm_model", input_type=File(optional=True), prefix="-svm_model", doc=InputDocumentation(doc="*             Svm model in libsvm format (can be produced by PTModel) (valid formats: 'txt')")), ToolInput(tag="in_max_number_of_peptides", input_type=Int(optional=True), prefix="-max_number_of_peptides", doc=InputDocumentation(doc="The maximum number of peptides considered at once (bigger number will lead to faster results but needs more memory).\n(default: '100000')")), ToolInput(tag="in_ini", input_type=File(optional=True), prefix="-ini", doc=InputDocumentation(doc="Use the given TOPP INI file")), ToolInput(tag="in_threads", input_type=Int(optional=True), prefix="-threads", doc=InputDocumentation(doc="Sets the number of threads allowed to be used by the TOPP tool (default: '1')")), ToolInput(tag="in_write_ini", input_type=File(optional=True), prefix="-write_ini", doc=InputDocumentation(doc="Writes the default configuration file")), ToolInput(tag="in_helphelp", input_type=Boolean(optional=True), prefix="--helphelp", doc=InputDocumentation(doc="Shows all options (including advanced)"))], outputs=[ToolOutput(tag="out_out", output_type=File(optional=True), selector=InputSelector(input_to_select="in_out", type_hint=File()), doc=OutputDocumentation(doc="*                   Output file\n(valid formats: 'idXML')"))], container="quay.io/biocontainers/openms:2.6.0--h4afb90d_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Ptpredict_V0_1_0().translate("wdl")

