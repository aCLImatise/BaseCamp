from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File, Int, Float, String, Boolean

Isocorcli_V0_1_0 = CommandToolBuilder(tool="isocorcli", base_command=["isocorcli"], inputs=[ToolInput(tag="in_path_metabolites_database", input_type=File(optional=True), prefix="-M", doc=InputDocumentation(doc="path to metabolites database")), ToolInput(tag="in_path_derivatives_database", input_type=File(optional=True), prefix="-D", doc=InputDocumentation(doc="path to derivatives database")), ToolInput(tag="in_path_isotopes_database", input_type=File(optional=True), prefix="-I", doc=InputDocumentation(doc="path to isotopes database")), ToolInput(tag="in_tracer", input_type=Int(optional=True), prefix="--tracer", doc=InputDocumentation(doc="the isotopic tracer (e.g. '13C')")), ToolInput(tag="in_resolution", input_type=Float(optional=True), prefix="--resolution", doc=InputDocumentation(doc="HR only: resolution of the mass spectrometer (e.g.\n'1e4')")), ToolInput(tag="in_mz_of_resolution", input_type=Int(optional=True), prefix="--mz_of_resolution", doc=InputDocumentation(doc="HR only: mz at which resolution is given (e.g. '400')")), ToolInput(tag="in_resolution_formula_code", input_type=String(optional=True), prefix="--resolution_formula_code", doc=InputDocumentation(doc="HR only: spectrometer formula code")), ToolInput(tag="in_tracer_purity", input_type=String(optional=True), prefix="--tracer_purity", doc=InputDocumentation(doc="purity vector of the tracer")), ToolInput(tag="in_correct_na_tracer", input_type=Boolean(optional=True), prefix="--correct_NA_tracer", doc=InputDocumentation(doc="flag to correct tracer natural abundance")), ToolInput(tag="in_verbose", input_type=Boolean(optional=True), prefix="--verbose", doc=InputDocumentation(doc="flag to enable verbose logs"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Isocorcli_V0_1_0().translate("wdl", allow_empty_container=True)

