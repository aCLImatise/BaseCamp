from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String, Boolean

Beamspy_Annotate_Compounds_V0_1_0 = CommandToolBuilder(tool="beamspy_annotate_compounds", base_command=["beamspy", "annotate-compounds"], inputs=[ToolInput(tag="in_peak_list", input_type=String(optional=True), prefix="--peaklist", doc=InputDocumentation(doc="Tab-delimited peaklist.")), ToolInput(tag="in_intensity_matrix", input_type=String(optional=True), prefix="--intensity-matrix", doc=InputDocumentation(doc="Tab-delimited intensity matrix.")), ToolInput(tag="in_db", input_type=String(optional=True), prefix="--db", doc=InputDocumentation(doc="Sqlite database to write results.")), ToolInput(tag="in_db_compounds", input_type=String(optional=True), prefix="--db-compounds", doc=InputDocumentation(doc="Metabolite database (reference).")), ToolInput(tag="in_db_name", input_type=String(optional=True), prefix="--db-name", doc=InputDocumentation(doc="Name compound / metabolite database (within --db-\ncompounds).")), ToolInput(tag="in_adducts_library", input_type=String(optional=True), prefix="--adducts-library", doc=InputDocumentation(doc="List of adducts to search for.")), ToolInput(tag="in_ion_mode", input_type=String(optional=True), prefix="--ion-mode", doc=InputDocumentation(doc="Ion mode of the libraries.")), ToolInput(tag="in_ppm", input_type=String(optional=True), prefix="--ppm", doc=InputDocumentation(doc="Mass tolerance in parts per million.")), ToolInput(tag="in_skip_patterns", input_type=Boolean(optional=True), prefix="--skip-patterns", doc=InputDocumentation(doc="Skip applying/using peak patterns (e.g. adduct and\nisotope patterns) to filter annotations.")), ToolInput(tag="in_rt", input_type=String(optional=True), prefix="--rt", doc=InputDocumentation(doc="Retention time tolerance in seconds."))], outputs=[], container="quay.io/biocontainers/beamspy:1.1.0--py_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Beamspy_Annotate_Compounds_V0_1_0().translate("wdl")

