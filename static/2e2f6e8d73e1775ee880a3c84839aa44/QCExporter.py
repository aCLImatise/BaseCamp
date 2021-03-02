from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File, String, Int, Boolean

Qcexporter_V0_1_0 = CommandToolBuilder(tool="QCExporter", base_command=["QCExporter"], inputs=[ToolInput(tag="in_in", input_type=File(optional=True), prefix="-in", doc=InputDocumentation(doc="*        Input qcml file (valid formats: 'qcML')")), ToolInput(tag="in_names", input_type=String(optional=True), prefix="-names", doc=InputDocumentation(doc="The name of the target runs or sets to be exported from. If empty, from all will be exported.")), ToolInput(tag="in_mapping", input_type=File(optional=True), prefix="-mapping", doc=InputDocumentation(doc="*   The mapping of the exported table's headers to the according qp cvs. The first row is considered containing the headers as for the exported the table. The second row is considered the according qp cv accessions of the qp to be exported. (valid formats: 'csv')")), ToolInput(tag="in_out_csv", input_type=File(optional=True), prefix="-out_csv", doc=InputDocumentation(doc="*   Output csv formatted quality parameter. (valid formats: 'csv')")), ToolInput(tag="in_ini", input_type=File(optional=True), prefix="-ini", doc=InputDocumentation(doc="Use the given TOPP INI file")), ToolInput(tag="in_threads", input_type=Int(optional=True), prefix="-threads", doc=InputDocumentation(doc="Sets the number of threads allowed to be used by the TOPP tool (default: '1')")), ToolInput(tag="in_write_ini", input_type=File(optional=True), prefix="-write_ini", doc=InputDocumentation(doc="Writes the default configuration file")), ToolInput(tag="in_helphelp", input_type=Boolean(optional=True), prefix="--helphelp", doc=InputDocumentation(doc="Shows all options (including advanced)"))], outputs=[], container="quay.io/biocontainers/openms:2.6.0--h4afb90d_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Qcexporter_V0_1_0().translate("wdl")

