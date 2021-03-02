from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File, Int, Boolean

Databasesuitability_V0_1_0 = CommandToolBuilder(tool="DatabaseSuitability", base_command=["DatabaseSuitability"], inputs=[ToolInput(tag="in_in_id", input_type=File(optional=True), prefix="-in_id", doc=InputDocumentation(doc="*     Input idXML file from peptide search with combined database with added de novo peptide. PeptideIndexer is needed, FDR is forbidden. (valid formats: 'idXML')")), ToolInput(tag="in_in_spec", input_type=File(optional=True), prefix="-in_spec", doc=InputDocumentation(doc="*   Input MzML file used for the peptide identification (valid formats: 'mzML')")), ToolInput(tag="in_in_novo", input_type=File(optional=True), prefix="-in_novo", doc=InputDocumentation(doc="*   Input idXML file containing de novo peptides (unfiltered) (valid formats: 'idXML')")), ToolInput(tag="in_out", input_type=File(optional=True), prefix="-out", doc=InputDocumentation(doc="Optional tsv output containing database suitability information as well as spectral quality. (valid formats: 'tsv')")), ToolInput(tag="in_ini", input_type=File(optional=True), prefix="-ini", doc=InputDocumentation(doc="Use the given TOPP INI file")), ToolInput(tag="in_threads", input_type=Int(optional=True), prefix="-threads", doc=InputDocumentation(doc="Sets the number of threads allowed to be used by the TOPP tool (default: '1')")), ToolInput(tag="in_write_ini", input_type=File(optional=True), prefix="-write_ini", doc=InputDocumentation(doc="Writes the default configuration file")), ToolInput(tag="in_helphelp", input_type=Boolean(optional=True), prefix="--helphelp", doc=InputDocumentation(doc="Shows all options (including advanced)"))], outputs=[], container="quay.io/biocontainers/openms:2.6.0--h4afb90d_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Databasesuitability_V0_1_0().translate("wdl")

