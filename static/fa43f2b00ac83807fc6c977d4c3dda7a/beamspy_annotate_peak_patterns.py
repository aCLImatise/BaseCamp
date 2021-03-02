from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String, File, Boolean, Int

Beamspy_Annotate_Peak_Patterns_V0_1_0 = CommandToolBuilder(tool="beamspy_annotate_peak_patterns", base_command=["beamspy", "annotate-peak-patterns"], inputs=[ToolInput(tag="in_peak_list", input_type=String(optional=True), prefix="--peaklist", doc=InputDocumentation(doc="Tab-delimited peaklist.")), ToolInput(tag="in_intensity_matrix", input_type=String(optional=True), prefix="--intensity-matrix", doc=InputDocumentation(doc="Tab-delimited intensity matrix.")), ToolInput(tag="in_gml_file", input_type=File(optional=True), prefix="--gml-file", doc=InputDocumentation(doc="Correlation graph in GraphML format.")), ToolInput(tag="in_db", input_type=String(optional=True), prefix="--db", doc=InputDocumentation(doc="Sqlite database to write results.")), ToolInput(tag="in_adducts", input_type=Boolean(optional=True), prefix="--adducts", doc=InputDocumentation(doc="Annotate adducts.")), ToolInput(tag="in_adducts_library", input_type=String(optional=True), prefix="--adducts-library", doc=InputDocumentation(doc="List of adducts.")), ToolInput(tag="in_isotopes", input_type=Boolean(optional=True), prefix="--isotopes", doc=InputDocumentation(doc="Annotate isotopes.")), ToolInput(tag="in_isotopes_library", input_type=String(optional=True), prefix="--isotopes-library", doc=InputDocumentation(doc="List of isotopes.")), ToolInput(tag="in_oligomers", input_type=Boolean(optional=True), prefix="--oligomers", doc=InputDocumentation(doc="Annotate oligomers.")), ToolInput(tag="in_neutral_losses", input_type=Boolean(optional=True), prefix="--neutral-losses", doc=InputDocumentation(doc="Annotate neutral losses.")), ToolInput(tag="in_neutral_losses_library", input_type=String(optional=True), prefix="--neutral-losses-library", doc=InputDocumentation(doc="List of neutral losses.")), ToolInput(tag="in_ion_mode", input_type=String(optional=True), prefix="--ion-mode", doc=InputDocumentation(doc="Ion mode of the libraries.")), ToolInput(tag="in_ppm", input_type=String(optional=True), prefix="--ppm", doc=InputDocumentation(doc="Mass tolerance in parts per million.")), ToolInput(tag="in_max_monomer_units", input_type=Int(optional=True), prefix="--max-monomer-units", doc=InputDocumentation(doc="Maximum number of monomer units.\n"))], outputs=[], container="quay.io/biocontainers/beamspy:1.1.0--py_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Beamspy_Annotate_Peak_Patterns_V0_1_0().translate("wdl")

