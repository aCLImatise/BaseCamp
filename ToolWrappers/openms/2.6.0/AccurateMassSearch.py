from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File, Int, Boolean

Accuratemasssearch_V0_1_0 = CommandToolBuilder(tool="AccurateMassSearch", base_command=["AccurateMassSearch"], inputs=[ToolInput(tag="in_in", input_type=File(optional=True), prefix="-in", doc=InputDocumentation(doc="*                FeatureXML or consensusXML file (valid formats: 'featureXML', 'consensusXML')")), ToolInput(tag="in_out", input_type=File(optional=True), prefix="-out", doc=InputDocumentation(doc="*               MzTab file (valid formats: 'mzTab')")), ToolInput(tag="in_out_annotation", input_type=File(optional=True), prefix="-out_annotation", doc=InputDocumentation(doc="A copy of the input file, annotated with matching hits from the database. (valid formats: 'featureXML', 'consensusXML')")), ToolInput(tag="in_positive_adducts", input_type=File(optional=True), prefix="-positive_adducts", doc=InputDocumentation(doc="*  This file contains the list of potential positive adducts that will be looked for in the database. Edit the list if you wish to exclude/include adducts. By default CHEMISTRY/PositiveAdducts.tsv in OpenMS/share is used. (valid formats: 'tsv')")), ToolInput(tag="in_negative_adducts", input_type=File(optional=True), prefix="-negative_adducts", doc=InputDocumentation(doc="*  This file contains the list of potential negative adducts that will be looked for in the database. Edit the list if you wish to exclude/include adducts. By default CHEMISTRY/NegativeAdducts.tsv in OpenMS/share is used. (valid formats: 'tsv')")), ToolInput(tag="in_ini", input_type=File(optional=True), prefix="-ini", doc=InputDocumentation(doc="Use the given TOPP INI file")), ToolInput(tag="in_threads", input_type=Int(optional=True), prefix="-threads", doc=InputDocumentation(doc="Sets the number of threads allowed to be used by the TOPP tool (default: '1')")), ToolInput(tag="in_write_ini", input_type=File(optional=True), prefix="-write_ini", doc=InputDocumentation(doc="Writes the default configuration file")), ToolInput(tag="in_helphelp", input_type=Boolean(optional=True), prefix="--helphelp", doc=InputDocumentation(doc="Shows all options (including advanced)"))], outputs=[], container="quay.io/biocontainers/openms:2.6.0--h4afb90d_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Accuratemasssearch_V0_1_0().translate("wdl")

