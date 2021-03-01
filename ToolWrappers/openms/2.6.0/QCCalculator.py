from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File, Boolean, Int

Qccalculator_V0_1_0 = CommandToolBuilder(tool="QCCalculator", base_command=["QCCalculator"], inputs=[ToolInput(tag="in_in", input_type=File(optional=True), prefix="-in", doc=InputDocumentation(doc="*                  Raw data input file (this is relevant if you want to look at MS1, MS2 and precursor peak information) (valid formats: 'mzML')")), ToolInput(tag="in_out", input_type=File(optional=True), prefix="-out", doc=InputDocumentation(doc="*                 Your qcML file. (valid formats: 'qcML')")), ToolInput(tag="in_id", input_type=File(optional=True), prefix="-id", doc=InputDocumentation(doc="Input idXML file containing the identifications. Your identifications will be exported in an easy-to-read format (valid formats: 'idXML')")), ToolInput(tag="in_feature", input_type=File(optional=True), prefix="-feature", doc=InputDocumentation(doc="Feature input file (this is relevant for most QC issues) (valid formats: 'featureXML')")), ToolInput(tag="in_consensus", input_type=File(optional=True), prefix="-consensus", doc=InputDocumentation(doc="Consensus input file (this is only used for charge state deconvoluted output. Use the consensusXML output form the DeCharger) (valid formats: 'consensusXML')")), ToolInput(tag="in_remove_duplicate_features", input_type=Boolean(optional=True), prefix="-remove_duplicate_features", doc=InputDocumentation(doc="This flag should be set, if you work with a set of merged features.")), ToolInput(tag="in_ini", input_type=File(optional=True), prefix="-ini", doc=InputDocumentation(doc="Use the given TOPP INI file")), ToolInput(tag="in_threads", input_type=Int(optional=True), prefix="-threads", doc=InputDocumentation(doc="Sets the number of threads allowed to be used by the TOPP tool (default: '1')")), ToolInput(tag="in_write_ini", input_type=File(optional=True), prefix="-write_ini", doc=InputDocumentation(doc="Writes the default configuration file")), ToolInput(tag="in_helphelp", input_type=Boolean(optional=True), prefix="--helphelp", doc=InputDocumentation(doc="Shows all options (including advanced)"))], outputs=[], container="quay.io/biocontainers/openms:2.6.0--h4afb90d_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Qccalculator_V0_1_0().translate("wdl")

